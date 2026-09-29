#!/usr/bin/env bash
# 前回のスクリーンショットと比べ、変化した画面だけを Markdown で出す。
#   bash shot-diff.sh <前回のscreenshotsディレクトリ> <今回のscreenshotsディレクトリ>
# ImageMagick（compare）があれば「5% 以内の色差を許容して 1% 以上のピクセルが違う画面」を変化とみなす。
# 無ければバイト比較（同一なら変化なし）。名前は "NN_<画面名>[_variant]" の NN 以降で対応づける。
PREV="$1"; NEW="$2"
[ -d "$PREV" ] && [ -d "$NEW" ] || { echo "前回の結果なし（初回）"; exit 0; }
CMP=""; command -v compare >/dev/null && CMP=compare; command -v magick >/dev/null && CMP="magick compare"
key() { basename "$1" .png | sed -E 's/^[0-9]+_//'; }
changed=0; same=0; added=0; rows=""
for f in "$NEW"/*.png; do
  [ -e "$f" ] || continue
  k=$(key "$f"); [[ "$k" == zz_* ]] && continue
  p=$(for c in "$PREV"/*.png; do [ "$(key "$c")" = "$k" ] && { echo "$c"; break; }; done)
  if [ -z "$p" ]; then added=$((added+1)); rows="$rows| 🆕 | $k | 前回なし |\n"; continue; fi
  if cmp -s "$f" "$p"; then same=$((same+1)); continue; fi
  if [ -n "$CMP" ]; then
    diffpx=$($CMP -metric AE -fuzz 5% "$f" "$p" null: 2>&1 | grep -oE '^[0-9.e+]+' | head -1)
    total=$(identify -format '%[fx:w*h]' "$f" 2>/dev/null || echo 0)
    if [ -n "$diffpx" ] && [ "${total:-0}" != 0 ]; then
      pct=$(awk -v d="$diffpx" -v t="$total" 'BEGIN{printf "%.1f", d/t*100}')
      if awk -v p="$pct" 'BEGIN{exit !(p<1.0)}'; then same=$((same+1)); continue; fi
      changed=$((changed+1)); rows="$rows| ⚠️ | $k | ${pct}% のピクセルが変化 |\n"; continue
    fi
  fi
  changed=$((changed+1)); rows="$rows| ⚠️ | $k | 画像が変化（バイト差） |\n"
done
removed=0
newkeys=" $(for n in "$NEW"/*.png; do [ -e "$n" ] && key "$n"; done | tr '\n' ' ') "
for c in "$PREV"/*.png; do
  [ -e "$c" ] || continue; k=$(key "$c"); [[ "$k" == zz_* ]] && continue
  case "$newkeys" in *" $k "*) ;; *) removed=$((removed+1)); rows="$rows| 🗑 | $k | 今回なし（画面が消えた/落ちた） |\n" ;; esac
done
echo "#### 前回との差分: 変化 $changed / 同じ $same / 新規 $added / 消失 $removed"
[ -n "$rows" ] && { echo; echo "| | 画面 | 内容 |"; echo "|---|---|---|"; printf "%b" "$rows"; }
[ "$removed" -gt 0 ] && exit 3 || exit 0

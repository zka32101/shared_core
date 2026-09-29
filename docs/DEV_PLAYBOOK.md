# 開発プレイブック（全アプリ共通・唯一の正本）

小学コレシリーズ・その他の自作アプリ全体に適用する、開発・テスト・リリースの方針。
**正本はこのファイルだけ**。他のリポジトリには置かず、リンクで参照する。

- 自動化の実体: `shared_core/.claude/skills/ship-cycle/`（本体はここ 1 か所）
- 全アプリの 10観点テスト: `shared_core/.github/workflows/device-test.yml`（アプリを自動検出。アプリ側には何も置かない）
- ストア要件の値と出典: `ship-cycle/store-rules.env`
- 結果の保存先: Google ドライブ「memory」/test-results/<アプリ>/（1 回 = zip 1 つ）
- 最終確認: 2026-09-29

---

## 1. 仕組みの全体像（メンテナンスは 1 か所）

| やること | どこで | アプリ側の準備 |
|---|---|---|
| 静的チェック・ストア要件・リリース準備 | `ship.sh`（preflight → verify → store-check） | 不要 |
| 10観点デバイステスト（CI） | `device-test.yml`: 週 1 回、直近 8 日に更新されたアプリを自動実行。手動なら `all` や任意のアプリ | 不要（公開リポジトリで、`lib/main.dart` と `android/` があれば自動で対象） |
| 10観点デバイステスト（実機） | `device-check.sh <app> [release.apk]` | 不要（テストは実行時に差し込み、終了時に元へ戻す） |

- 新しいアプリは何もしなくても翌週から対象になる。除外は `device-test.yml` の `EXCLUDE` に 1 語足すだけ。
- 非公開リポジトリは CI の自動検出の対象外（ローカル実機で実行する）。
- スキルを使うには:
  - クラウド: shared_core をクローンしてあるセッションなら `bash ../shared_core/.claude/skills/ship-cycle/ship.sh .`
  - Windows ローカル: `git clone https://github.com/zka32101/shared_core %USERPROFILE%\.claude\shared_core` を一度実行し、`mklink /J %USERPROFILE%\.claude\skills\ship-cycle %USERPROFILE%\.claude\shared_core\.claude\skills\ship-cycle` で全プロジェクト共通のスキルにする。更新は `git pull` だけ。

### shared_core を安全に変える（全アプリに波及するため）

- **メジャー更新は自動PRにしない**（dependabot は minor/patch のみ）。Firebase など共有の依存をメジャー更新するときは、shared_core と全アプリの制約を同時に手動で上げる（P16 が警告する）。
- **タグで版管理**: 一括検証が緑の main で `Tag Release` ワークフロー（`v0.2.0` 形式）を実行する。アプリは `ref: main` でなく `ref: v0.2.0` で参照すると、shared_core の変更がアプリごとに好きなタイミングで取り込める。
- **一括検証**（`verify-all-apps.yml`）は PR と main への反映で全アプリを検証する。`release-readiness-check.yml` は既存の `dependency_overrides:` に統合する（重複キーで pubspec が壊れる不具合を修正済み）。
- **Firestore ルール**は `tests/firestore_rules/`（エミュレータ、22 ケース）で検証される。ランキングと統計はクライアントから書けず、Cloud Functions だけが書く。

## 2. 役割分担（Windows ローカル / クラウド Code）

**原則: コードはクラウドで書いて PR にし、ローカルはクラウドでできない作業だけにする。**

| 作業 | クラウド | Windows ローカル |
|---|---|---|
| 改修・PR 作成・静的チェック | ◎ | △（急ぎのとき） |
| analyze / test | CI に任せる（SDK を新規インストールしない） | ◎ `ship.sh` |
| 10観点テスト | CI（エミュレータ / シミュレータ） | ◎ 実機（`device-check.sh`） |
| 課金・広告・通知・カメラの実機確認、release 署名ビルド | ✕ | ◎ |
| ストア提出・申告・Secrets・署名鍵 | ✕ | ◎ ユーザー本人 |

- 受け渡し: クラウドで PR → CI 通過 → ローカルで pull → 実機テスト → 結果の zip 名と表を PR か Issue にコメント。
- Windows の注意:
  - `git config --global core.autocrlf input` と `core.longpaths true` を設定する。`.sh` は LF 固定（`.gitattributes`）。
  - ビルド用フォルダは shared_core の CLAUDE.md の `C:\BuildWork` 構成に従う。TEMP/TMP を setx で変えない。
  - 低メモリ環境では Gradle を `-Xmx1G` / daemon なしにし、エミュレータではなく実機を使う。
  - 署名鍵はリポジトリの外に置く。

## 3. 10観点テスト

| # | 観点 | 自動判定 |
|---|---|---|
| 1 | 起動 | 起動後もプロセスが生存し、integration_test が起動画面に到達する |
| 2 | クラッシュ/ANR | Android: FATAL / ANR / シグナル。iOS: 未捕捉例外 / .ips |
| 3 | 全画面表示 | `MaterialApp.routes` を自動検出して全画面を巡回し、表示崩れ・例外を検出。全画面のスクリーンショットを保存 |
| 4 | 通信 | SocketException / DNS / TLS / NSURLErrorDomain（CI 回線起因は警告） |
| 5 | 認証 | FirebaseAuthException / DEVELOPER_ERROR / キーチェーン |
| 6 | 課金 | Billing / StoreKit / RevenueCat の設定エラー（仮想端末では「課金不可」が正常なので警告） |
| 7 | 広告・同意 | AdMob アプリ ID 未設定、No fill 以外の読み込みエラー |
| 8 | 子ども向け | 子ども向けタグ・外部リンクの保護者ゲート・ATT（静的チェック） |
| 9 | ライフサイクル・権限 | 背面→復帰、強制終了→再起動で落ちない。権限の例外 |
| 10 | 性能 | 起動時間（仮想端末 8 秒 / 実機 3 秒）、PSS 400MB、フレーム落ち |

- 全画面は 3 つの条件で表示する: 通常 / **小型スマホ（360×640）+ 文字 2 倍**（`_stress`）/ ダークモード（`_dark`）。**通常の崩れは失敗、他の条件での崩れは警告**（子ども向けで最も崩れやすいのは大きい文字なので、警告は順に直す）。
- 前回の結果（Drive の同じアプリの最新 zip）と画面を比べ、**変化した・消えた画面だけ**をレポートに出す（`shot-diff.sh`。ImageMagick があれば 5% 以内の色差は無視）。画面が消えていたら観点 3 は警告になる。
- ❌ が 1 つでもあれば失敗、⚠️ は目で確認する。結果は 10 行の表（`report.md`）で出る。
- 毎週の実行後、全アプリの結果を 1 枚の表にして Drive の `test-results/_summary/latest.md`（と日付付き）に保存する。要対応のアプリが上に並ぶ。
- 巡回できない画面（引数が必要な画面や go_router）は自動でスキップして警告を出す。巡回に加えたい場合だけ、アプリの `integration_test/screen_catalog.dart` に書く（任意。書けば差し込みより優先される）。

## 4. 手動で確認する観点（リリース前・ストア配信版で）

最終確認は、Play の内部テスト / TestFlight から入れた**ストア配信版**の **release ビルド**で行う（署名・課金・Google ログインは、ここでしか本番と同じ動作にならない）。

**スモーク（10分）**
1. 新規インストール → 初回導線を完了できる
2. メイン機能を 1 周できる
3. 再起動しても進捗・コインが残る
4. 保護者ゲート → ショップが表示される
5. 広告が 1 回表示される
6. 背面に回して 5 分後に復帰できる

**連携（正常・失敗・復帰の 3 点）**
- Auth: 再インストール後の復元。
- Firestore: オフラインで操作 → 同期される。ルールで拒否されたら画面に表示される。
- Remote Config: 取得できなくても既定値で動く。
- 通知: 前面 / 背面 / 終了状態で受信する。
- 課金: 購入・キャンセル・保留・復元・期限切れ・別端末。
- 広告: プレミアム会員には表示しない。Ad Inspector で子ども向けタグを確認する。
- アップデート: 旧ストア版から上書きしてデータが残る。

**異常系**
- 処理の途中で通信が切れる（二重付与・データ消失がない）。
- 購入・報酬のボタンを連打しても 1 回分だけ処理される。
- 「アクティビティを保持しない」設定でも状態が戻る。
- **端末の時刻を変更**しても、デイリーボーナスや連続日数を稼げない（05:00 のリセットは 1 回だけ）。
- 権限を拒否した後、設定アプリへ案内する。
- 容量不足・回転・文字倍率最大でも崩れない。

**iOS 固有**
- 画面:
  - セーフエリア（ノッチ / Dynamic Island）に重ならない。
  - iPad は 4 方向と Split View に対応する（ITMS-90474）。
  - Dynamic Type 最大でも崩れない。
- 権限:
  - 説明文は子どもにも分かる言葉にする。
  - 通知の許可は必要になった時に求める。
- ATT: 子ども向けアプリでは使わない。一般アプリでは ATT → UMP → 広告の順にする。
- ログイン:
  - 外部ログインがあるなら Sign in with Apple を用意する（4.8）。
  - アカウントを作れるならアプリ内で削除できるようにする（5.1.1(v)）。
- 課金:
  - 復元ボタンを置く。
  - サブスク購入画面に価格・期間・自動更新・規約リンクを表示する（3.1.2）。
  - 子どもの端末では「承認と購入」で保留になる。保留 → 承認で二重付与も欠落もないこと。
- ネットワーク: IPv6 のみの環境で動く。ATS（http を使わない）。
- 審査メモ: 保護者ゲートの解除方法とテスト手順を書く。
- シミュレータで確認できないもの: 課金（Sandbox）、プッシュ（APNs）、カメラ、性能。

**端末**
- 低スペック Android（実機）、最新 Android（16KB ページ）、タブレット、小型 iPhone、最新 iPhone / iPad。
- 無料の自動実機テストを先に使う:
  - Play の起動前レポート（内部テストに上げると実機 12 機種を自動巡回）
  - Firebase Test Lab（無料枠: 1 日に仮想端末 10 回・実機 5 回）

**合否基準**
- テスト中のクラッシュ・ANR は 0 件。
- 本番のユーザー体感クラッシュ率は 1.09% 未満、ANR 率は 0.47% 未満（Play の不良基準）。
- 公開は段階的に行い（10% → 50% → 100%）、72 時間は Android vitals と Crashlytics を監視して、超えたら停止する。

## 5. マネタイズ・広告（子ども向けが前提）

- Google Play ファミリー ポリシー: Families 自己認証済みの広告 SDK だけを使う。パーソナライズ広告・リマーケティングは禁止。
- AdMob: 最初の広告読み込みの前に、`RequestConfiguration(tagForChildDirectedTreatment: yes, maxAdContentRating: G)` を設定する（TFCD は TFAT へ移行中）。EEA / UK 向けには UMP の同意フローを入れる。
- Apple の Kids カテゴリ: 第三者の広告・分析は原則として不可。
- 収益設計:
  - サブスク（RevenueCat、月額 ¥120）が主力。購入導線は保護者ゲートの後ろに置く。
  - バナーは学習画面の外だけ。全画面広告は使わないか、ステージの区切りだけにする。
  - リワード広告は「ヒント」との交換だけにし、見なくても学習できるようにする。
  - プレミアム会員には広告を初期化しない。
- 外部リンク（クロスプロモ含む）の前には保護者ゲートを入れる（`CrossPromoSection(beforeOpenStore: requireParentalGate)`）。

## 6. セキュリティ

- 自動（ship-cycle）: 秘密情報のコミット、`firestore.rules` の `write: if true` / 公開読み取り、cleartext / debuggable、`.sh` の CRLF、Action が SHA で固定されているか、release の難読化。
- 手動:
  - 書き込みは本人（`request.auth.uid`）だけに限る。スコアなど改ざんで得をする値は Cloud Functions で検証する。
  - App Check を有効にする。
  - 子どもの個人情報は最小限（名前・学年）にし、公開ランキングにはニックネームだけを出す。
  - ログに uid やトークンを出さない。
  - 公開リポジトリでは `app-privacy-security` スキルで匿名化（OPSEC）を確認する。

## 7. スクリーンショット・録画

- 全画面のスクリーンショットは 10観点テストが自動で撮る。iOS 実機はコマンドで撮れないため、テスト内の撮影に統一している。
- 単発の撮影: `device-10check.sh shot <名前>`（Android は `adb exec-out`。Windows で `adb shell screencap` を使うと PNG が壊れる）。直前のログも同名で保存する。
- 再現用の録画: `device-10check.sh record <秒> <名前>`（最大 180 秒）。
- ステータスバーの固定（9:41・電池 100%）は自動。
- **保存**: 1 回のテスト = `<アプリ>_<版>_<OS>_<日時>.zip` 1 つ（スクショ・一覧画像・ログ・表）。
  - ローカル: Google ドライブ「memory」/test-results/<アプリ>/ に自動コピー。
  - CI: 同じ場所へ自動アップロード（シークレット `GOOGLE_DRIVE_SERVICE_ACCOUNT` が必要）。
  - PR には zip 名と表だけを貼る。

## 8. トラブルシューティング

**進め方**
1. 再現: 2 回再現させ、`record` で録画する。
2. 切り分け: debug / release、仮想端末 / 実機、ローカル / ストア版、Android / iOS、新版 / 旧版 のどちらで起きるか。
3. 収集: zip を残す。
4. 原因を特定する。
5. 再発防止: 検出できるチェックを ship-cycle か 10観点に追加する。

**ログ**

| 対象 | 方法 |
|---|---|
| Android | `adb logcat --pid=$(adb shell pidof <pkg>)`、丸ごとなら `adb bugreport`（ANR・tombstone を含む）、`dumpsys meminfo/package` |
| iOS | シミュレータ: `xcrun simctl spawn booted log stream`。実機: Xcode の Devices → Open Console（.ips）、TestFlight のクラッシュ |
| Flutter | `flutter logs`、DevTools、`flutter run --profile` |
| 難読化されたエラー表示 | `flutter symbolize -i trace.txt -d build/symbols/<arch>.symbols`。Crashlytics には symbols と dSYM をアップロードしておく |

**症状 → 最初に見る場所**

| 症状 | 確認すること |
|---|---|
| release でだけ落ちる | R8 がクラスを削除 → `build/app/outputs/mapping/release/missing_rules.txt` を `proguard-rules.pro` に追加 |
| release で灰色の画面 | ビルド時の例外（debug では赤い画面）→ profile で起動してログを見る |
| 起動直後に落ちる | AdMob アプリ ID、Firebase 設定ファイルの不一致、minSdk（10観点 1・2・7 / store-check S2・S7） |
| ストア版でだけ Google ログインが失敗 | Play アプリ署名鍵の SHA-1 を Firebase に登録する |
| iOS で課金商品が出ない | 有料 App 契約（銀行・税務）が有効か、商品が「提出準備完了」か、ID が一致しているか。TestFlight 版で確認する |
| Android で課金商品が出ない | Play 経由でインストールしたか、ライセンステスターか、内部テストに一度上げたか |
| 広告が出ない | 新しい広告ユニット（数時間かかる）、app-ads.txt、No fill（コード 3）、UMP の同意 |
| 通知が届かない | iOS: APNs キーと Capability。Android 13 以降: 通知権限。どちらも実機で確認する |
| iOS のビルドが失敗 | `pod repo update && pod install`、Deployment Target、DerivedData を削除 |
| Android のビルドが失敗 | Gradle / AGP / Kotlin / Java の組み合わせ、`./gradlew --stacktrace` |
| CI でだけ失敗 | 古い lock ファイル・キャッシュ、Flutter のバージョン差、生成物のコミット漏れ（P1・P13・P14） |
| 依存関係が解決できない | 共有パッケージのメジャー更新（P16）→ 両側の制約をそろえる |
| データが消える / 二重になる | オフライン中の書き込み、連打、アップデート時の移行（§4 異常系） |

## 9. 更新ルール

- 新しい失敗・リジェクト・障害が起きたら、チェックで検出できるなら ship-cycle に追加し、この文書には 1 行だけ追記する。**文書は増やさない**。
- ストア要件の値（`store-rules.env`）は 90 日ごとに公式ページで再確認する（Claude が自動で行う）。

参考:
- [Play ターゲット API](https://developer.android.com/google/play/requirements/target-sdk)
- [16KB ページ](https://android-developers.googleblog.com/2025/05/prepare-play-apps-for-devices-with-16kb-page-size.html)
- [Apple SDK 要件](https://developer.apple.com/news/upcoming-requirements/)
- [Families ポリシー](https://support.google.com/googleplay/android-developer/answer/9893335)
- [App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [起動前レポート](https://support.google.com/googleplay/android-developer/answer/9842757)
- [Test Lab 無料枠](https://firebase.google.com/docs/test-lab/usage-quotas-pricing)
- [Android vitals](https://support.google.com/googleplay/android-developer/answer/9844486)
- [Crashlytics 難読化解除](https://firebase.google.com/docs/crashlytics/flutter/get-deobfuscated-reports)
- [Sandbox 課金](https://developer.apple.com/documentation/storekit/testing-in-app-purchases-with-sandbox)

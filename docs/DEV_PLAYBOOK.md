# 開発プレイブック（Windows ローカル / クラウド Code 共通）

小学コレシリーズ全アプリ・yourwish の**全セッションが読む単一の正本**。
shared_core は全アプリのセッションがクローンするためここに置く。変更はここだけで行い、他リポジトリからはリンクで参照する。

- 自動チェックの実体: `.claude/skills/ship-cycle/`（shared_core と yourwish の両方に同じ内容で配置）
- ストア要件の値と出典: `.claude/skills/ship-cycle/store-rules.env`
- 最終確認: 2026-09-29

---

## 1. 役割分担

**原則: コードはクラウドで書いて PR にし、ローカルはクラウドでできない作業（実機・署名・ストア提出）だけに使う。**

| 作業 | クラウド Code | Windows ローカル Code |
|---|---|---|
| 改修・リファクタ・PR作成 | ◎ 主担当 | △ 急ぎのときだけ |
| 静的チェック（`preflight` / `store-check`） | ◎ 毎回 | ◎ pull 後に毎回 |
| analyze / test | CI に任せる（SDK を新規インストールしない） | ◎ SDK があるので `verify.sh` |
| エミュレータテスト | ◎ GitHub Actions | ○ 必要な時のみ（重い） |
| **実機テスト**（課金・広告・通知・カメラ） | ✕ | ◎ 主担当（`device-check.sh`） |
| **release 署名ビルド**（AAB/IPA） | CI（Secrets 注入）で行う | ○ 鍵がローカルにある場合 |
| ストア提出・Console での申告 | ✕ | ◎ ユーザー本人 |
| Secrets・署名鍵・API キーの管理 | ✕ チャットに貼らない | ◎ 本人が GitHub Secrets へ登録 |

受け渡し:
1. クラウドで PR を作る → CI green → マージ
2. ローカルで `git pull` → `bash .claude/skills/ship-cycle/ship.sh` → `device-check.sh`
3. 実機での結果は PR か Issue にコメントで残す（次のクラウドセッションが読めるように）。`RELEASE_REPORT.md` は gitignore 対象なので貼り付ける

## 2. Windows ローカルのベストプラクティス

- **フォルダ構成**は shared_core `CLAUDE.md` の「Windows ローカルビルド環境の統一」（`C:\BuildWork\...`）に従う。TEMP/TMP は `setx` で永続変更しない。
- Claude Code on Windows は **Git Bash** でシェルを実行するため、ship-cycle の `.sh` はそのまま動く（`bash .claude/skills/ship-cycle/ship.sh`）。
- **改行コード事故を防ぐ**（Windows で編集した `.sh` が CRLF になり、クラウドや CI で `bad interpreter` になる）:
  ```
  git config --global core.autocrlf input
  git config --global core.longpaths true   # Flutter の深いパス対策
  ```
  各リポジトリの `.gitattributes` に `*.sh text eol=lf` を書く（preflight の SEC3 が検出する）。
- 低メモリ（RAM 3GB 等）: `android/gradle.properties` で `org.gradle.jvmargs=-Xmx1G`、`org.gradle.daemon=false`。エミュレータは使わず、実機を USB 接続する。
- 署名鍵（`.jks` / `key.properties`）は `C:\BuildWork` の外、リポジトリの外に置く。コミットされると P10 がエラーを出す。
- 成果物は `C:\BuildWork\artifacts` → `マイドライブ\apk\` に置く（全アプリ共通ルール）。
- 1 アプリ = 1 ローカルセッション。複数アプリを同時に開かない（メモリ節約）。

## 3. クラウド Code のベストプラクティス

- Flutter SDK がない環境では **インストールせず**、`preflight` と `store-check` で直せるものを直して PR にし、analyze・test は CI（`release-readiness-check.yml` / `verify-all-apps.yml`）で確認する。
- shared_core を変更するときは `verify-all-apps.yml` で全アプリへの影響（デグレ）を確認してからマージする。
- `pubspec.lock` や生成物（`.freezed.dart` / `.g.dart`）はツールで再生成し、手で編集しない。
- PR を作ったら監視し、CI が red のまま終わらせない。
- ユーザー確認が必要なのは orchestrator の「唯一のリスト」（ストアでの公開、本番データの破壊、Secrets 登録、課金が発生する操作など）だけ。それ以外は確認なしで進める。

## 4. マネタイズ・広告

### 4.1 前提: 小学コレは「子ども向けアプリ」
- **Google Play ファミリー ポリシー**: 子ども向けアプリには、Families 自己認証済みの広告 SDK だけを使う。パーソナライズ広告・インタレスト広告・リマーケティングは禁止。
  - [Families Policies](https://support.google.com/googleplay/android-developer/answer/9893335) / [AdMob での準拠方法](https://support.google.com/admob/answer/6223431)
- **AdMob**: 全リクエストに子ども向けタグを付ける。`RequestConfiguration(tagForChildDirectedTreatment: TagForChildDirectedTreatment.yes, maxAdContentRating: MaxAdContentRating.g)` を `MobileAds.instance.updateRequestConfiguration` で**初回の広告読み込み前に**設定する。TFCD は TFAT（Tag for age treatment）へ移行中なので、SDK 更新時に確認する。
  - [Targeting](https://developers.google.com/admob/android/targeting)
- **Apple Kids カテゴリ**: 第三者の広告・分析は原則として禁止（例外は条件付き）。Kids カテゴリで出すなら AdMob・Firebase Analytics は外す。一般カテゴリで出す場合もガイドライン 1.3 / 5.1.4 に従う。
  - [App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)

### 4.2 収益設計（推奨）
| 手段 | 方針 |
|---|---|
| サブスク（RevenueCat, 月額¥120） | 主力。購入導線は必ず**保護者ゲート**（`ParentalGate`）の後ろに置く。 |
| バナー広告 | 学習画面の外（メニュー・結果画面）だけ。問題の回答中には出さない。 |
| インタースティシャル | 子ども向けでは**使わない**か、ステージ区切りだけにし頻度を制限する（誤タップ・審査リスク）。 |
| リワード広告 | 「ヒント」「コイン」との交換に限る。視聴しなくても学習が進められること。 |
| プレミアム会員 | 広告を完全に非表示にする（`isSubscribed` で広告の初期化自体を行わない）。 |

### 4.3 実装ルール（store-check が検出）
- 広告ユニット ID は `--dart-define` で渡し、debug ではテスト ID を使う（M3）。リリース時にテスト ID が残っていないか確認する（P15）。
- 子ども向けアプリで `google_mobile_ads` を使うのに、子ども向けタグ・最大コンテンツレーティングの設定がない → エラー（M1）。
- EEA/UK 向けに UMP（`ConsentInformation`）の同意フローを入れる（M2）。
- Android: AdMob の APPLICATION_ID（S7）、Play Console の広告ID申告（S8）、データセーフティを実装と一致させる。
- RevenueCat: entitlement ID をダッシュボードと一致させる（shared_core #58 の事例）。購入の復元ボタンを必ず置く（審査要件）。

## 5. セキュリティ

自動（ship-cycle）:
| # | 内容 |
|---|---|
| P10 | 秘密鍵・API キー・署名鍵がコミットされていないか |
| SEC1 | `firestore.rules` に `write: if true` がないか（エラー）、`read: if true` のコレクションに個人情報がないか（警告） |
| SEC2 | `usesCleartextTraffic="true"` / `debuggable="true"` がないか |
| SEC3 | `.sh` の CRLF 混入（Windows 由来の実行不能） |
| SEC4 | release ビルドに `--obfuscate --split-debug-info` が付いているか |
| P8 | GitHub Actions のサードパーティ Action が SHA で固定されているか |

手動（リリース前に1回。詳細は `app-privacy-security` スキル = OWASP MASVS）:
- Firestore ルールの書き込みは本人（`request.auth.uid`）に限定する。ランキングのスコアのような**改ざんで得をする値**は Cloud Functions で検証して書き込む。
- Firebase App Check を有効にする（不正なクライアントからのアクセスを防ぐ）。
- 子どもの個人情報は最小限にする（名前・学年のみ。COPPA）。公開ランキングにはニックネームだけを出す。
- ログに uid・購入情報・トークンを `print` しない。
- 公開リポジトリにする場合は、本人が特定されないよう `app-privacy-security` スキルの匿名化（OPSEC）チェックを行う。

## 6. 実機テストの観点

> **詳細な方針（レベル分け・全画面網羅・連携マトリクス・異常系・端末・合否基準・記録）は [`DEVICE_TEST_POLICY.md`](DEVICE_TEST_POLICY.md) を正本とする。** 以下はその要約。

エミュレータや CI では確認できず、**Windows ローカルの実機でしか確認できない**項目を優先する。`device-check.sh` が logcat から自動で判定できるものに ◎ を付けた。

| 観点 | 確認内容 | 自動 |
|---|---|---|
| 起動 | release ビルドでクラッシュしない（FATAL EXCEPTION がない） | ◎ |
| Firebase | 初期化エラーがない。Google サインインで `DEVELOPER_ERROR`（SHA-1 未登録）が出ない | ◎ |
| 広告 | テストデバイス登録済みでテスト広告が出る。エラーコード 3（No fill）以外のエラーがない。子ども向けタグが効いている | ◎（ログ） |
| 課金 | ライセンステスターで購入・復元・解約後の状態。`BillingResponse` のエラーがない | ◎（ログ）+ 目視 |
| 保護者ゲート | 購入・外部リンク・設定の前に必ず表示される | 目視 |
| オフライン | 機内モードで起動し、学習できる。復帰後に同期される | 目視 |
| 画面 | 小さい画面・タブレット・文字サイズ最大でレイアウトが崩れない | 目視 |
| 通知 | Android 13 以降の通知権限ダイアログ、リマインダーの到達 | 目視 |
| 性能 | 低メモリ端末でのコールドスタートが 3 秒以内。スクロールがカクつかない | 目視 |
| 16KB ページ | Android 15 以降の 16KB エミュレータイメージで起動する（CI で可） | CI |

クラウドでは GitHub Actions のエミュレータ（`emulator-test-template.yml`）で起動と画面遷移まで確認する。上の目視項目は PR に「実機確認待ち」チェックリストとして残し、ローカルセッションが消化する。

## 7. 更新ルール

- 新しい失敗や審査リジェクトが起きたら、①ship-cycle にチェックを追加し、②この文書の該当節に 1 行追記する。
- ストア要件は `store-rules.env` の `RULES_CHECKED` が 90 日を過ぎたら、公式ページで再確認する（自動・確認不要）。
- この文書を変更したら、yourwish の ship-cycle と差分がないことを確認する。

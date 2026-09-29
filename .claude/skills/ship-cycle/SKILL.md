---
name: ship-cycle
description: 開発→テスト→リリース準備を低リソースで自動実行する。Flutter アプリの改修後・PR 前・CI 失敗の予防・リリース前チェック・実機テスト・不具合調査で使う。「チェックして」「テストして」「リリース準備」「PR前確認」「実機テスト」「スクショ」「原因調べて」でトリガー。
---

# ship-cycle

方針の正本: shared_core `docs/DEV_PLAYBOOK.md`（これ 1 つ）。本体はこのフォルダ 1 か所だけで、アプリ側には何も置かない。

## 使い方（どのアプリでも。`S` は shared_core クローン内のこのフォルダ）

```bash
bash $S/ship.sh [app]                         # preflight → verify → store-check（RELEASE_REPORT.md）
bash $S/device-check.sh <app> [release.apk]   # 実機で 10観点（Windows Git Bash + USB）
bash $S/device-10check.sh android|ios [app]   # 10観点本体（CI も同じ）
bash $S/device-10check.sh shot|record|demo|sheet ...   # 撮影
```

- CI の 10観点テスト: shared_core `device-test.yml` が全公開アプリを自動検出（週 1・更新分のみ）。手動実行は `apps=all` か任意のリポジトリ名。
- 結果: 1 回 = zip 1 つ → Google ドライブ「memory」/test-results/<アプリ>/。前回との画面差分（`shot-diff.sh`）と、週次の全アプリ一覧（`_summary/latest.md`）も自動。
- 環境変数: `ALL=1`（全パッケージ）/ `BASE=<ref>` / `SKIP_TEST=1` / `CLEAN=1` / `APK=` / `DRIVE_DIR=`。

## Claude の手順

1. 改修後は `ship.sh`。❌ を直してから PR（Flutter SDK が無い環境では preflight・store-check だけで PR にし、CI に任せる）。
2. リリース前は `RELEASE_REPORT.md` の ❌ を 0 にし、「ユーザー作業」を PR に貼る。10観点テストは `device-test.yml` を手動実行（iOS も）。
3. 不具合調査は DEV_PLAYBOOK §8 の順（再現 → 切り分け → 収集 → 原因 → 再発防止チェック追加）。
4. 確認なしで直してよいもの: バージョン・SDK 値の引き上げ、Info.plist の説明文、Privacy Manifest、CI の Flutter/Xcode バージョン。
   ユーザーの作業: ID の決定、ストア公開、Secrets・署名鍵、Firebase SHA-1、Console での申告。
5. 新しい失敗は、検出できるならチェックを追加し、DEV_PLAYBOOK に 1 行だけ書く（ファイルを増やさない）。
6. `store-rules.env` の `RULES_CHECKED` が 90 日を過ぎたら、公式 URL で再確認して更新する。

## チェック一覧（実際の事故・リジェクト・公式要件に限定）

| 段 | ID | 内容 |
|---|---|---|
| preflight | P1–P7 | 生成物の欠落 / アノテーション依存 / Firebase の早期参照 / 固定 UID / asset / applicationId と google-services / テスト |
| | P8–P10, P16 | Action の SHA 固定 / macOS の push 実行 / 秘密情報 / 共有パッケージの依存メジャー更新 |
| | SEC1–4 | Firestore ルール / cleartext・debuggable / CRLF / 難読化 |
| verify | P13–P14 | pub get / 生成物の差分 / analyze / test（変更したパッケージのみ） |
| store-check | S1–S7, S11–S13 | targetSdk / minSdk / versionCode / 版番号 / 16KB / com.example / AdMob ID / debug 署名 / INTERNET / テスト広告 ID |
| | I1–I5, I7–I12 | Privacy Manifest / 権限の説明文 / CFBundleVersion / Bundle ID / アイコンのα / Xcode / GoogleService / 4.8 / iPad 方向 / ATT / アカウント削除 |
| | M1, M2, M4, M5, M7 | 子ども向けタグ / UMP / Kids の分析 / 購入の復元 / 外部リンクの保護者ゲート |

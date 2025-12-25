# マスター・チェックリスト（共通・詳細版）

作成日: 2025-12-25
対象: 少人数チーム（〜10 名、兼務前提）向け。各項目は **目的/手順/ツール/成果物/受入基準/証跡/役割/時間目安/初心者向け補足** を含む。

## 運用の基本原則

- **何を**（項目名）→ **なぜ**（目的）→ **どうやって**（手順）→ **いつ完了**（受入基準）→ **証跡**（保存場所）
- 少人数向けにドキュメントを**バンドル**（Runbook/SOP/レビュー記録）し、検査は**CI 自動化**可能なものは自動化
- **ダブル承認**（最低 2 名）: TL+PM など
- **Evidence は PR にリンク**：レビュー承認時に参照できるようにする

## フェーズ一覧

- 詳細は各ファイル参照：
  - `checklists/01-requirements.md`
  - `checklists/02-basic-design.md`
  - `checklists/03-detailed-design.md`
  - `checklists/04-build-unit-test.md`
  - `checklists/05-integration-system-test.md`
  - `checklists/06-uat.md`
  - `checklists/07-release.md`
  - `checklists/08-operations-monitoring.md`
  - `checklists/09-compliance.md`

## 品質ゲート

- 各フェーズの Go/No-Go 基準は `quality-gates/*` を参照

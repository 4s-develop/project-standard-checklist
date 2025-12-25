# マスター・チェックリスト（共通）

作成日: 2025-12-25
対象: 少人数チーム（〜10 名、兼務前提）向け、将来の複数プロジェクトで共通利用できる Checklist OS

## 目的

- 各フェーズで「何を」「どうやって」「いつまでに」「誰が」「何で完了とみなすか」を明文化
- 証跡（Evidence）標準化と PR リンクで監査・再利用を容易に
- 少人数でも回るように、ドキュメントはバンドル化、検査は CI で自動化（可能なもの）

## フェーズ一覧

1. 要件定義（`checklists/01-requirements.md`）
2. 基本設計（`checklists/02-basic-design.md`）
3. 詳細設計（`checklists/03-detailed-design.md`）
4. 構築・単体（`checklists/04-build-unit-test.md`）
5. 総合テスト（`checklists/05-integration-system-test.md`）
6. 受入テスト（UAT）（`checklists/06-uat.md`）
7. リリース（`checklists/07-release.md`）
8. 運用・監視（`checklists/08-operations-monitoring.md`）
9. コンプライアンス（必要時のみ、`checklists/09-compliance.md`）

## RACI（最低限）

- PM: 統制/承認/議事録管理
- TL: 技術方針/設計レビュー/品質ゲート定義
- QA: 試験計画/仕様/結果/トリアージ
- SRE: CI/CD/監視/アラート/運用/リリース/ロールバック
- FE/BE/DBA: 実装・試験（兼務可）

※ 品質ゲートの承認は常に **2 名**（例: TL+PM / QA+PM）。

## 品質ゲート一覧

- 要件定義ゲート: `quality-gates/gate-requirements.md`
- 設計ゲート: `quality-gates/gate-design.md`
- 総合テストゲート: `quality-gates/gate-system-test.md`
- リリースゲート: `quality-gates/gate-release.md`

## 証跡保管ルール（SharePoint）

- パス例: `/Projects/{PJ}/Evidence/{Phase}/YYYYMMDD_種類_版`
- 命名規則: `YYYYMMDD_ドキュメント種別_vN`
- PR に証跡リンクを貼る（承認時に参照可能）

## ブランチ戦略（GitFlow）

- main（リリース）/ develop（統合）/ feature/_/ release/_ / hotfix/\*
- PR テンプレート: `templates/pr_template.md`（承認者 2 名必須）

## CI（最小構成）

- Lint（ESLint/Prettier）/ UT / IT / SCA（依存ライブラリ）
- カバレッジは**オプション**（現時点の案件ではゲート化しない）
- アクセシビリティ/Lighthouse は**任意**（予算と優先度に応じて）

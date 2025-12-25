# プロジェクト標準（少人数チーム向け）

作成日: 2025-12-25

このリポジトリは、少人数チーム（〜10名、兼務前提）で政府系案件を含む複数プロジェクトに共通利用できる **Checklist OS** を提供します。

## 構成
- `checklists/` フェーズ別チェックリスト
- `quality-gates/` Go/No-Go判定基準
- `playbooks/` SOP
- `templates/` 議事録/品質レビュー/Runbook/PRテンプレート等
- `evidence/` SharePoint格納ルール/命名規則
- `.github/workflows/ci.yml` CI（Lint/UT/IT/SCA。Coverage/A11yはオプション）

## ブランチ戦略（GitFlow）
- `main` / `develop` / `feature/*` / `release/*` / `hotfix/*`

## 初期セットアップ
1. リポジトリ初期化 & push: `bootstrap_push.sh`
2. `develop` ブランチで共通チェックリストを維持
3. PRで証跡リンク（SharePoint）を必須化
4. Coverage/A11yは必要時にCIで有効化

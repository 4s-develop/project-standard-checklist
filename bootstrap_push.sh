#!/usr/bin/env bash
set -euo pipefail
REMOTE_URL="${REMOTE_URL:-${1:-}}"
if [[ -z "$REMOTE_URL" ]]; then
  echo "[エラー] REMOTE_URL が指定されていません。例: REMOTE_URL=https://github.com/org/repo.git ./bootstrap_push.sh"
  exit 1
fi
REPO_DIR="project-standard"
cd "$REPO_DIR"

git init

git add .

git commit -m "feat: initialize project-standard (Checklist OS for small teams)"

if ! git branch | grep -q "develop"; then
  git branch develop
fi

git remote add origin "$REMOTE_URL" || true

CURRENT_BRANCH=$(git branch --show-current || echo "")
if [[ "$CURRENT_BRANCH" != "master" && "$CURRENT_BRANCH" != "main" ]]; then
  git branch -M main
fi

git push -u origin main

git checkout develop

git push -u origin develop

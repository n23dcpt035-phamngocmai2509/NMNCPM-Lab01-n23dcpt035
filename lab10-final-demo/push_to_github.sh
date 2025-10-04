#!/usr/bin/env bash
set -e

# Chạy script từ thư mục chứa lab9
cd "$(dirname "$0")"

# Tạo git repo nếu chưa có
if [ ! -d .git ]; then
  git init
fi

git add .
git commit -m "Lab9: add report, issues, README" || true

# Đặt branch chính
git branch -M main || true

# Thiết lập remote (ghi đè nếu đã tồn tại)
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/n23dcpt035-phamngocmai2509/NMNCPM-Lab01-n23dcpt035.git

# Attempt to push automatically if requested
if [ "${AUTO_PUSH:-false}" = "true" ]; then
  echo "AUTO_PUSH=true -> attempting to push automatically..."

  # Prefer gh CLI if available and authenticated
  if command -v gh >/dev/null 2>&1; then
    if gh auth status >/dev/null 2>&1; then
      echo "gh is authenticated. Pushing with git..."
      git push -u origin main
      echo "Push completed via gh."
      exit 0
    else
      echo "gh found but not authenticated. Run: gh auth login"
    fi
  fi

  # Fallback: use GITHUB_TOKEN if set
  if [ -n "${GITHUB_TOKEN:-}" ]; then
    echo "Using GITHUB_TOKEN to push (token will be used only for this push)."
    # Save current remote
    OLD_REMOTE=$(git remote get-url origin)
    # Set temp remote with token (note: token appears in process list for a short time)
    AUTH_REMOTE="https://${GITHUB_TOKEN}@github.com/n23dcpt035-phamngocmai2509/NMNCPM-Lab01-n23dcpt035.git"
    git remote set-url origin "$AUTH_REMOTE"
    git push -u origin main
    # Restore remote URL
    git remote set-url origin "$OLD_REMOTE"
    echo "Push completed via GITHUB_TOKEN."
    exit 0
  fi

  echo "Automatic push failed: no authenticated method found."
  echo "Options:"
  echo "  1) Authenticate gh CLI: gh auth login && git push -u origin main"
  echo "  2) Export GITHUB_TOKEN and rerun with AUTO_PUSH=true"
  echo "     export GITHUB_TOKEN=ghp_xxx; AUTO_PUSH=true bash push_to_github.sh"
  echo "  3) Or push manually: git push -u origin main"
  exit 1
else
  echo "Ready to push. You may be prompted for credentials."
  echo "If you prefer GitHub CLI, run: gh auth login && git push -u origin main"
  echo "Or to push now (HTTPS):"
  echo "  git push -u origin main"
  echo ""
  echo "To attempt automatic push via this script, run:"
  echo "  AUTO_PUSH=true bash push_to_github.sh"
fi

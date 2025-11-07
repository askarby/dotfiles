# This script restores all staged and unstaged changes and removes untracked files

set -e

# Check if we're in a git repository
if ! git rev-parse --git-dir >/dev/null 2>&1; then
  echo "Error: Not a git repository"
  exit 1
fi

echo "This will:"
echo "  - Unstage all staged changes"
echo "  - Discard all unstaged changes"
echo "  - Remove all untracked files and directories"
echo ""
echo "WARNING: This action cannot be undone!"
echo ""

# Show what will be affected
echo "Status before cleanup:"
git status --short
echo ""

read -p "Are you sure you want to proceed? (yes/no): " confirmation

if [ "$confirmation" != "yes" ]; then
  echo "Operation cancelled"
  exit 0
fi

echo ""
echo "Cleaning repository..."

# Unstage all staged changes
git reset HEAD

# Discard all unstaged changes (modified and deleted files)
git checkout -- .

# Remove all untracked files and directories
git clean -fd

echo ""
echo "Repository cleaned successfully!"
echo ""
echo "Status after cleanup:"
git status --short

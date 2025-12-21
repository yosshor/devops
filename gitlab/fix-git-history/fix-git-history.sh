#!/bin/bash

# --- Configuration ---
CORRECT_NAME="ShorY"
CORRECT_EMAIL="yosishor28@gmail.com"
EXCLUDED_EMAIL="m6m66b@gmail.com"

echo "📊 Current contributor status (Before change):"
git shortlog -sne --all

echo ""
read -p "Do you want to start the history rewrite process? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Process cancelled."
    exit 1
fi

# --- Step 1: Run the rewrite ---
echo "⚙️  Running git filter-branch... (This may take a while)"

git filter-branch -f --env-filter "
if [ \"\$GIT_AUTHOR_EMAIL\" != \"$EXCLUDED_EMAIL\" ]; then
    export GIT_AUTHOR_NAME=\"$CORRECT_NAME\"
    export GIT_AUTHOR_EMAIL=\"$CORRECT_EMAIL\"
fi
if [ \"\$GIT_COMMITTER_EMAIL\" != \"$EXCLUDED_EMAIL\" ]; then
    export GIT_COMMITTER_NAME=\"$CORRECT_NAME\"
    export GIT_COMMITTER_EMAIL=\"$CORRECT_EMAIL\"
fi
" --tag-name-filter cat -- --all

# --- Step 2: Cleanup ---
echo "🧹 Cleaning up old data and Reflogs..."
git for-each-ref --format="delete %(refname)" refs/original | git update-ref --stdin
git reflog expire --expire=now --all
git gc --prune=now

# --- Step 3: Post-rewrite verification ---
echo ""
echo "✅ Rewrite completed. New contributor status:"
git shortlog -sne --all

echo ""
read -p "Does the result look correct? Perform Force Push to server? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Force Push cancelled. Changes remain locally only."
    exit 1
fi

# --- Step 4: Force Push ---
echo "🚀 Pushing changes to server..."
git push --force --all
git push --force --tags

echo "✨ Completed successfully!"
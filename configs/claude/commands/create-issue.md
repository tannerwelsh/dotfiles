Create a new GitHub issue for: $ARGUMENTS

Analyze the codebase context to understand the project structure, then generate:

1. A clear, descriptive issue title
2. A comprehensive issue description including:
   - Problem statement
   - Expected behavior vs current behavior
   - Steps to reproduce (if applicable)
   - Suggested solution approach
   - Acceptance criteria
3. Appropriate labels (bug, feature, enhancement, documentation, etc.)
4. Any related issues or PRs

Format the issue using GitHub markdown with proper sections. If this is a bug, include environment details and error logs if available.

After creating the issue content, use the gh CLI to create it:

Example commands:
```bash
# Create issue with title and body
gh issue create --title "Issue title" --body "Issue description"

# Create issue with labels
gh issue create --title "Issue title" --body "Issue description" --label "bug,priority-high"

# Create issue and assign to user
gh issue create --title "Issue title" --body "Issue description" --assignee "@me"

# Create issue in specific repo
gh issue create --repo owner/repo --title "Issue title" --body "Issue description"
```
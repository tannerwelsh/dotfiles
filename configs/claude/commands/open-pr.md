Create a pull request for the current changes.

1. Generate a clear PR title following conventional commits format (feat:, fix:, docs:, etc.)

2. Write a comprehensive PR description including:
   - **Summary**: Brief overview of changes
   - **Motivation and Context**: Why these changes are needed
   - **Type of Change**:
     - [ ] Bug fix (non-breaking change)
     - [ ] New feature (non-breaking change)
     - [ ] Breaking change
     - [ ] Documentation update
   - **How Has This Been Tested?**: Testing approach and coverage
   - **Screenshots** (if UI changes)

3. Create PR checklist:
   - [ ] Code follows project style guidelines
   - [ ] Self-review completed
   - [ ] Comments added for complex logic
   - [ ] Documentation updated
   - [ ] Tests added/updated
   - [ ] All tests passing
   - [ ] No breaking changes (or documented if any)

4. Link related issues with "Fixes #XXX" or "Relates to #XXX"
5. Suggest appropriate reviewers and labels

Use gh CLI to create the PR:

```bash
# Basic PR creation
gh pr create --title "PR title" --body "PR description"

# Create PR with specific base branch
gh pr create --base main --title "PR title" --body "PR description"

# Create PR and set labels, reviewers, assignees
gh pr create \
  --title "feat: Add new feature" \
  --body "Detailed description" \
  --label "enhancement,needs-review" \
  --reviewer username1,username2 \
  --assignee "@me"

# Create draft PR
gh pr create --draft --title "WIP: Feature" --body "Work in progress"

# Create PR from issue
gh issue develop <issue-number> --checkout
gh pr create --title "Fix: Issue #<number>" --body "Fixes #<number>"

# View PR after creation
gh pr view --web
```

Additional gh PR commands:
```bash
# Check PR status
gh pr status

# List PR checks
gh pr checks

# Request review
gh pr review --request username

# Mark PR ready for review (from draft)
gh pr ready
```
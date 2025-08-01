Solve GitHub issue #$ARGUMENTS by:

First, use gh CLI to view the issue details:
```bash
# View issue details
gh issue view $ARGUMENTS

# View issue with comments
gh issue view $ARGUMENTS --comments
```

Then proceed with:

1. Reading and understanding the issue description and requirements
2. Analyzing the codebase to understand current implementation
3. Identifying all files that need to be modified
4. Planning the solution approach
5. Creating a working branch: `gh issue develop {issue-number} --checkout`
6. Implementing the solution with clean, maintainable code following:
   - Project conventions and style guidelines (TypeScript/JavaScript or Ruby)
   - Proper error handling and edge cases
   - Backward compatibility where applicable

Create all necessary code changes and provide:
- A summary of changes made
- Any considerations for reviewers
- Test cases that should be added

After implementing the solution, open a pull request with GitHub CLI: `gh pr create --title "{title}" --body "{body}" --assignee @me`
- Title: Use conventional commit format
- Description: Include full context, testing approach, and screenshots if applicable
- Link the issue with "Fixes #{issue-number}" or "Resolves #{issue-number}"
- Add appropriate labels
- Include PR checklist

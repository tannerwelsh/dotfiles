Automatically make progress on this repository by finding and completing the next appropriate task.

## Step 1: Analyze Repository State

First, check the current state:
- Review existing open issues using `gh issue list --state open`
- Check current branch and any uncommitted changes
- Review recent commits and PRs

## Step 2: Select Work Item

If open issues exist:
1. Prioritize issues based on:
   - Labels (prioritize: critical > bug > feature > enhancement > documentation)
   - Age (older issues may be more important)
   - Assignee (prefer unassigned issues)
   - Complexity (start with well-defined, achievable tasks)
2. Select the most appropriate issue
3. Display the selected issue and confirm before proceeding

If NO open issues exist:
1. Analyze the codebase for potential improvements:
   - Check test coverage gaps
   - Look for TODOs or FIXMEs in code
   - Identify missing documentation
   - Find code that could be refactored
   - Check for outdated dependencies
2. Ask: "No open issues found. Based on my analysis, here are potential improvements: [list]. What would you like me to work on?"
3. Wait for user input before proceeding

## Step 3: Create Feature Branch

1. Ensure working directory is clean (stash changes if needed)
2. Create and checkout a new branch: `gh issue develop {issue-number} --checkout`
3. Push the branch to set up tracking

## Step 4: Implement Solution

1. Analyze the issue/task requirements thoroughly
2. Plan the implementation approach
3. Make all necessary code changes:
   - Follow project conventions
   - Ensure clean, maintainable code
   - Handle edge cases and errors appropriately
   - Add appropriate logging
4. Commit changes with descriptive message following conventional commits

## Step 5: Add Tests

1. Identify all code that needs test coverage
2. Write comprehensive tests:
   - Unit tests for new functions/methods
   - Integration tests for feature flows
   - Edge case coverage
   - Error handling verification
3. Run all tests to ensure they pass
4. Verify test coverage meets project standards
5. Commit test files with message: `test: add tests for {feature}`

## Step 6: Update Documentation

1. Update relevant documentation:
   - API docs for new/changed methods
   - README if features affect usage
   - CHANGELOG.md with the new changes
   - Inline code comments for complex logic
2. Ensure all documentation is accurate and clear
3. Commit documentation with message: `docs: update documentation for {feature}`

## Step 7: Create Pull Request

1. Push all commits to the feature branch
2. Create a comprehensive PR:
   - Title: Use conventional commit format
   - Description: Include full context, testing approach, and screenshots if applicable
   - Link the issue with "Fixes #X" if applicable
   - Add appropriate labels
   - Include PR checklist
3. Use GitHub CLI: `gh pr create --title "{title}" --body "{body}" --assignee @me`

## Step 8: Assign Reviewers

1. Identify appropriate reviewers:
   - Check CODEOWNERS file
   - Look at recent PR reviewers
   - Consider who has context on this code area
2. Assign reviewers using: `gh pr edit {pr-number} --add-reviewer {reviewer}`
3. Post a comment on the PR summarizing the changes and any specific areas needing review attention

## Summary

After completing all steps, provide a summary:
- Issue/Task completed: #{number} or description
- Branch created: {branch-name}
- PR opened: #{pr-number}
- Reviewers assigned: {list}
- Next steps: Monitor PR for review feedback

If any step fails, provide clear error information and suggest how to proceed manually.
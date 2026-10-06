#  
# Tally - Simple Git Guide

## 1. First-time setup

Clone the project:

```bash
git clone https://github.com/james8464/hackathon-project.git
cd hackathon-project
```

Open the Xcode project:

```bash
open Tally/Tally.xcodeproj
```

---

## 2. Before starting any work

Always update your copy first:

```bash
git switch main
git pull
```

Then create a new branch:

```bash
git switch -c feature/your-feature-name
```

Examples:

```bash
git switch -c feature/lidar-scanner
```

```bash
git switch -c feature/home-screen
```

```bash
git switch -c feature/quote-system
```

---

## 3. While working

See what you have changed:

```bash
git status
```

Save your changes to Git:

```bash
git add .
git commit -m "Add property scanning screen"
```

Commit regularly.

Good commit messages:

```text
Add login screen
Fix camera permissions
Create property model
Add contractor search
Fix scan results layout
```

---

## 4. Push your branch to GitHub

```bash
git push -u origin feature/your-feature-name
```

Example:

```bash
git push -u origin feature/lidar-scanner
```

After the first push, future pushes can simply be:

```bash
git push
```

---

## 5. Create a Pull Request

Using GitHub CLI:

```bash
gh pr create
```

Or:

- Go to GitHub
- Open the repository
- Click **Compare & pull request**
- Check:

```text
base: main
compare: your branch
```

- Create the Pull Request

---

## 6. Merge the Pull Request

Once the code is ready:

```bash
gh pr merge --merge --delete-branch
```

Or use:

**GitHub → Pull Request → Merge pull request**

---

## 7. After your branch is merged

Return to `main`:

```bash
git switch main
git pull
```

Check everything is clean:

```bash
git status
```

You should normally see:

```text
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

---

# Normal workflow

Every new feature:

```bash
git switch main
git pull
git switch -c feature/my-feature
```

Work in Xcode.

Then:

```bash
git status
git add .
git commit -m "Describe what you changed"
git push -u origin feature/my-feature
```

Create a Pull Request.

Merge it.

Then:

```bash
git switch main
git pull
```

---

# If someone else merged changes

Before starting more work:

```bash
git switch main
git pull
```

This downloads everyone else's latest changes.

---

# Important rules

- Never start new work without running:

```bash
git pull
```

- Don't normally work directly on `main`.
- Create a branch for each feature or fix.
- Commit regularly.
- Use clear commit messages.
- Push your branch so your work is backed up.
- Use Pull Requests to merge work into `main`.
- Avoid multiple people editing the exact same code at the same time when possible.

---

# Useful commands

Current branch:

```bash
git branch --show-current
```

See all local branches:

```bash
git branch
```

See changed files:

```bash
git status
```

Download latest changes:

```bash
git pull
```

Upload commits:

```bash
git push
```

Switch to main:

```bash
git switch main
```

Create a branch:

```bash
git switch -c feature/name
```

---

# If something goes wrong

Don't panic and don't start deleting Git files.

Run:

```bash
git status
```

Then copy the terminal output and ask ChatGPT or another AI assistant what happened.

Include:

- the command you ran
- the full error message
- the output of `git status`

AI can usually tell you exactly which Git command to run next.

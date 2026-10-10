# Plumb Git Guide

The team currently keeps its work on **`main`**. Coordinate before editing the same files, and pull the latest changes before starting. This matches the repository's single-branch workflow.

## First-time setup

```bash
git clone https://github.com/james8464/hackathon-project.git
cd hackathon-project
open Plumb/Plumb.xcodeproj
```

## Before editing

```bash
git switch main
git pull --ff-only origin main
git status
```

If you already have local edits and the pull cannot proceed, save or commit your work before resolving the conflict. Do not discard someone else's changes.

## Save and share a finished change

```bash
git status
git add <files-you-changed>
git commit -m "Describe the change"
git pull --rebase origin main
git push origin main
```

Review the files listed by `git status` before committing. Use a specific message, such as `Update workout coaching plan` or `Improve camera setup screen`.

If the rebase reports a conflict, resolve it and check the result before pushing. Ask a teammate when both people changed the same product behavior.

## Check the result

```bash
git status
git log -1 --oneline
```

A clean working tree and `main` up to date with `origin/main` mean the local checkout matches GitHub. The team can change this workflow later if a review process becomes useful.

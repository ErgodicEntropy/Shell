git: distributed versioning system used to save checkpoints or undo operations or collaborate
git areas: working directory (local repo) -> staging area (index) -> remote repository [graph]
commit: a snapshot of the project at a given point in time
    commit id (hash): git log --format=%H
    author: name and email
    date
    message
    parent commit

git -n 5
git init: initialie .git files
git config: --global --local user.name "" user.email ""
git clone [git repo url: HTTP/SSH]
git remote
    git remote -v: check for the remote repositoryxx
    git remote add origin [git repo URL: HTTP/SSH]
    git remote remove origin


git status: it shows the state of the repository i.e., commits, untracked files, files in staging area, modified files, etc.
git diff: difference between files
git log: commit history
git show [object: commit branch..etc]

git add . [file/files] [directory/directories]: move objets from local repo to staging area
git commit: take a snapshot
    git commit -m "message"
git push origin/branch localbranch
git fetch: fetch contents of the remote repo without modifying contents of the local repo
git pull origin/branch localbranch: git fetch + git merge origin/branch

git branch: list all the local branches
    git branch -a: list the all
    git branch -r: list remote branches
    git branch -m newbranch: rename current branch to newbranch
    git branch -m oldbranch newbranch: rename a specific branch
git checkout branch: move to branch
git switch branch: move to branch while storing files

git merge
git rebase
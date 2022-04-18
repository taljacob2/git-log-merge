# git-log-merge

## Installation

### Clone This Repository As A Subtree In Your Project

Merge this repository to a new folder called `git-log-merge` at the root folder of your project:
```
git subtree add -P git-log-merge https://github.com/taljacob2/git-log-merge master --squash
```

### Configure The Alias Of `git log-merge`

Run the following command:
```
git config alias.log-merge '!sh ./git-log-merge/git-log-merge.sh "${args[@]}"'
```

## How To Use

- For example:
  ```
  git log-merge <MERGE_COMMIT> --oneline
  ```

- For example:
  ```
  git log-merge
  ```

## Check For Updates

In case you already have an existing version of "git-log-merge" and you want to update to the newest version available,
you can merge the newest version of this repository to your existing `git-log-merge` folder:
```
git subtree pull -P git-log-merge https://github.com/taljacob2/git-log-merge master --squash
```

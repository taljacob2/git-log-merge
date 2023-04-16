> v1.0.0

# git-log-merge

A small addition for `git log` to view all the commits that were merged on a certain merge commit.

**ATTENTION:**

For `git log-merge` to work, please make sure that you regularly merge your commits with `git merge --no-ff`.

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

### Output Example

Executed:
```
git log-merge 1289b09443721efde9d1ba97aab821d604f9f6ed --oneline
```

Resulted with:
```
*   1289b09 Merge branch 'dev-tal-test' into development-test
|\
| * ac0b6b6 (dev-tal) Fix Add Question Forms
| * 092a45b Testing Question Forms And Language
| * af19750 `dev-tal` init
* a3c059b (development) Merge commit '4f1592d25f9a2acc69fb19887b72cd91d926cb43' as 'git-merge-and-ignore'
* 4f1592d Squashed 'git-merge-and-ignore/' content from commit 7bd4834
```

## Check For Updates

In case you already have an existing version of "git-log-merge" and you want to update to the newest version available,
you can merge the newest version of this repository to your existing `git-log-merge` folder:
```
git subtree pull -P git-log-merge https://github.com/taljacob2/git-log-merge master --squash
```

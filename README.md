## About
Tools to manage multiple repos at once.  You could get more configurability with [clustergit](https://github.com/mnagel/clustergit), but the dependencies are annoying, and what this is used for is simple enough.  The only dependency is Ruby, and not sure if the version matters.

## Commands

### Git Lever
Runs a git command in all git repos down your system's directory tree starting from *root-dir*, which defaults to your current directory.

**gitlev** *cmd*  *root_dir*

If your command has any spaces, just wrap it in quotes.

**Example**

Assuming you have a directory called *CoreDev* with 3 repos in it: client-services, backoffice, and portal:

**$**`gitlev status ~/CoreDev`

```
<<<OUTPUT 'portal: status'>>>
On branch epic/payroll_adjustment_column_update
Your branch is up to date with 'origin/epic/payroll_adjustment_column_update'.

nothing to commit, working tree clean
<<<OUTPUT 'backoffice: status'>>>
On branch epic/payroll_adjustment_column_update
Your branch is up to date with 'remotes/origin/epic/payroll_adjustment_column_update'.

nothing to commit, working tree clean
<<<OUTPUT 'client-services: status'>>>
On branch epic/payroll_adjustment_column_update
Your branch is up to date with 'origin/epic/payroll_adjustment_column_update'.

nothing to commit, working tree clean
```

It also works to specify a relative directory:

**client-services sf-dev$** `gitlev status ..`

### Git Shift

Changes branches on multiple repos down your system's directory tree starting from *root-dir*, which defaults to your current directory.  If the branch doesn't exist, the script will try to checkout develop, and then master if develop doesn't exist.

**gitshift** *branch_name*  *root_dir*

**Example**

Assuming you have a directory called *CoreDev* with 3 repos in it: client-services, backoffice, and portal:

**$** `gitshift develop  ~/CoreDev`

```
Shift portal to develop
Switched to branch 'develop'
Result: Your branch is behind 'origin/develop' by 2 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)
Shift backoffice to develop
Switched to branch 'develop'
Result: Your branch is behind 'origin/develop' by 3 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)
Shift client-services to develop
Switched to branch 'develop'
Result: Your branch and 'origin/develop' have diverged,
and have 1 and 4 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)
```

### Installation

**Clone this repo**
`git clone https://github.com/herohhnparaiso/git-tools`

**Make a bin folder if you don't have one**
`mkdir ~/.bin`

**Put repo contents into the bin folder, and cleanup**
`cp -r git-tools/ ~/.bin/`
`chmod +x ~/.bin/gitlev && chmod +x ~/.bin/gitshift`
`rm -r ~/.bin/.git && rm ~/.bin/.gitignore ~/.bin/README.md`

**Add this line to your ~/.bash_profile if you just had to create the ~/.bin folder: **
`export PATH="~/.bin:$PATH"`

**Restart your terminal and enjoy!**





### About
Tools to manage multiple repos at once.  You could get more configurability with [clustergit](https://github.com/mnagel/clustergit), but the dependencies are annoying, and what this is used for is simple enough.

### Commands

## Git Lever

**gitlev** *cmd*  *root_dir*
Runs a git command in all git repos down your system's directory tree starting from *root-dir*, which defaults to your current directory.

If your command has any spaces, just wrap it in quotes.

**Example**

Assuming you have a directory called *CoreDev* with 3 repos in it: client-services, backoffice, and portal:

`$ gitlev status ~/CoreDev`

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

`client-services sf-dev$ gitlev status ..`



### Installation

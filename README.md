### About
Tools to manage multiple repos at once.

### Commands

##Git Lever

`gitlev *command name* *root-dir (default: . )*`

Runs a git command in all git repos down your system's directory tree starting from `*root-dir*`	

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



### Installation

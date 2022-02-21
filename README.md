# Effective Shell Scripts

This respository contains effective yet simple shell scripts that saves your day.
After downloading scripts you must execute these steps in your terminal to run scripts easily.
```
chmod +x [filename].sh
mv [filename].sh /usr/local/bin
```
Here's the whole list.

- [Backup.sh](https://github.com/Osmanyasal/effective_shell_scripts/blob/main/backup.sh)
  - This script allows you to copy selected files to $HOME/backup directory automatically or you can enter specific directories. entered file names are processed first as shell expansion unless you typed in between \" or \' quote characters.<br>(see more https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html) <br> 
  - This copies all files in the FROM directory to TO
    <img width="650" alt="Screen Shot 2022-02-21 at 2 43 37 PM" src="https://user-images.githubusercontent.com/22853419/154948950-b669e1f7-e8e8-42d1-9a9c-f401bda259ae.png">

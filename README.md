# clamav-win
This is automation for clamav scan in Windows

### Usage 
I created a user called ClamAV and gave him the necessary permissions to write log files to specific files. ( This is important, you should also check if script execution permission is enabled with the ``Get-ExecutePolicy -List`` command. If not, ``Set-ExecutePolicy Unrestricted -Force`` will work. Otherwise search the internet.)
I ran this script on Windows with the task scheduler, so that it runs on every session that is opened.

You can use the action section with the following code:
```
C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
```
For arguments:
```
-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "C:\path\to\clamAV.ps1"
```

# ❗If your username contains spaces, something may go wrong with this script. Be careful when using...

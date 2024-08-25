# date for logfile
$dateTime = (Get-Date).ToString("yyyy-MM-dd_HH-mm-ss")
$logFile = "C:\Users\ClamAV\Documents\allsystemclamscan-$dateTime.log"

clamscan --recursive --log=$logFile "C:\Users\ClamAV" "C:\Users\Ortak" "C:\Windows\System32" "C:\Windows\SysWOW64" "C:\Windows\WinSxS" "C:\Windows\Temp"

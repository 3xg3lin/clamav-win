# Which user is enable on the system.
$enabledUsers = @("Ortak" , "ClamAV")

# loop for ClamAV scanner
foreach ($user in $enabledUsers) {
    $paths = @(
    "C:\Users\$user\Desktop",
    "C:\Users\$user\Documents",
    "C:\Users\$user\Downloads",
    "C:\Users\$user\Music",
    "C:\Users\$user\Pictures",
    "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup",
    )

    $escapedPaths = $paths | ForEach-Object { "`"$_`"" }
    $allPaths = $escapedPaths -join " "
    Write-Output "Checking now: " $allPaths

    # date for logfile
    $dateTime = (Get-Date).ToString("yyyy-MM-dd_HH-mm-ss")
    $logFile = "C:\Users\ClamAV\Documents\$user-clamscan-$dateTime.log"
        
    clamscan --recursive --remove --log=$logFile $allPaths

}

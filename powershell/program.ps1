$env:computername = [System.Net.Dns]::GetHostName()

Write-Host "Now deploying on" $env:computername;

[string[]]$myArray = Get-Content -Path ($PSScriptRoot + "\..\lines.txt")

$myColors = "red", "green", "blue", "yellow";
$myPrefixes = "`t... ", "`t", " `b";
$myIntervals = 100, 300, 600, 900;

try {
    while ($true) {
        $myText = Get-Random -input $myArray -Count 1;
        $myColor = Get-Random -input $myColors -Count 1;
        $myPrefix = Get-Random -input $myPrefixes -Count 1;
        $myInterval = Get-Random -input $myIntervals -Count 1;
        $myTimestamp = Get-Date -UFormat "%Y-%m-%d %T"
        Write-Host ($myTimestamp + "  " + $myPrefix + $myText) -foreground $myColor;
        Start-Sleep -Milliseconds $myInterval;
    }
}
finally {
    Write-Host "Deployment Complete"
}


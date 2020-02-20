#"Hello, Michael";
Write-Host "deploying on" $env:computername; #since we're all not Michael

$myArray = "pinging host 127.0.0.1", 
"waiting for signal from localhost", 
"receiving bytes", 
"transpiling data", 
"checking bytes for mistransfers",
"building HTTP packets", 
"encrypting data using SHA1", 
"Failed encrypting data using SHA1, Switching to SHA256", 
"Initializing Google Cloud Service", 
"mvn appengin:devserver - deploying",
"Already up to date.";

$myColors = "red", "green", "blue", "yellow";
$myPrefixes = "`t... ", "`t", " `b";
$myIntervals = 100, 300, 600, 900;

while ($true) {
    $myText = Get-Random -input $myArray -Count 1;
    $myColor = Get-Random -input $myColors -Count 1;
    $myPrefix = Get-Random -input $myPrefixes -Count 1;
    $myInterval = Get-Random -input $myIntervals -Count 1;
    $myTimestamp = Get-Date -UFormat "%Y-%m-%d %T"
    write-host ($myTimestamp + "  " + $myPrefix + $myText) -foreground $myColor;
    Start-Sleep -Milliseconds $myInterval;
}

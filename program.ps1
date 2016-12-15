#"Hello, Michael";
Write-Host "deploying on" $env:computername; #since we're all not Michael
$myArray = "pinging host 127.0.0.1", "waiting for signal from localhost", "receiving bytes", "transpiling data", "checking bytes for mistransfers", "building HTTP packets", "encrypting data using SHA1";
while ($true) {
    $myText = Get-Random -input $myArray -Count 1;
    "`t... " + $myText;
    Start-Sleep -Milliseconds 300;
}

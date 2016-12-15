#"Hello, Michael";
Write-Host "deploying on" $env:computername; #since we're all not Michael
<<<<<<< HEAD
$myArray = "pinging host 127.0.0.1", "waiting for signal from localhost", "receiving bytes", "transpiling data", "checking bytes for mistransfers", "building HTTP packets", "encrypting data using SHA1";
$myColors = "red", "green", "blue", "yellow";
=======
$myArray = "pinging host 127.0.0.1", "waiting for signal from localhost", "receiving bytes", "transpiling data", "checking bytes for mistransfers", "building HTTP packets", "encrypting data using SHA1", "Failed encrypting data using SHA1, Switching to SHA256", "Initializing Google Cloud Service", "mvn appengin:devserver - deploying";
>>>>>>> origin/master
while ($true) {
    $myText = Get-Random -input $myArray -Count 1;
    $myColor = Get-Random -input $myColors -Count 1;
    write-host ("`t... " + $myText) -foreground $myColor;
    Start-Sleep -Milliseconds 300;
}

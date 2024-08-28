# Path to the executable
$exePath = "C:\Path\To\Disable-TamperProtection.exe"

# Check if the executable exists
if (Test-Path $exePath) {
    Write-Host "Executing Disable-TamperProtection.exe..."

    # Execute the executable
    Start-Process -FilePath $exePath -ArgumentList "1" -Wait
    Start-Sleep -Seconds 5
    
    Start-Process -FilePath $exePath -ArgumentList "2" -Wait
    Start-Sleep -Seconds 5
    
    Start-Process -FilePath $exePath -ArgumentList "3" -Wait
    Start-Sleep -Seconds 5

    Start-Process -FilePath $exePath -ArgumentList "4" -Wait
    Write-Host "Tamper Protection and AV/MDE settings should be processed."

} else {
    Write-Host "Executable not found: $exePath"
}

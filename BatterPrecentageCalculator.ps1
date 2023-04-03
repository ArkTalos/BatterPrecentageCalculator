# Create a variable to store the output file path
$outputFile = "$env:USERPROFILE\battery-report.html"

# Run the powercfg command to generate the battery report
powercfg /batteryreport /output $outputFile

# Check if the report was generated successfully
if (Test-Path $outputFile) {
    Write-Host "Battery report generated successfully at $outputFile"

    # Read the HTML file contents
    $html = Get-Content $outputFile -Raw

    # Use regex to extract the design capacity and full charge capacity
    $designCapacity = [regex]::Match($html, 'DESIGN CAPACITY</span></td><td>([\d,]+) mWh').Groups[1].Value -replace ',', ''
    $fullChargeCapacity = [regex]::Match($html, 'FULL CHARGE CAPACITY</span></td><td>([\d,]+) mWh').Groups[1].Value -replace ',', ''

    #calculate the percentage of the battery
    $percentage = [math]::Round($fullChargeCapacity / $designCapacity * 100)

    # Display the results
    Write-Host "Design capacity: $designCapacity mWh"
    Write-Host "Full charge capacity: $fullChargeCapacity mWh"
    Write-Host "Battery percentage: $percentage%"
} else {
    Write-Host "Failed to generate battery report"
}

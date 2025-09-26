try {
    Install-WindowsFeature -name Web-Server -IncludeManagementTools -ErrorAction Stop
    $hostname = hostname
    Set-Content -Path "C:\inetpub\wwwroot\index.html" -Value "<html><body><h1>Hello from $hostname</h1></body></html>"
} catch {
    Write-Output "Error: $_"
}
Install-WindowsFeature -name Web-Server -IncludeManagementTools
$hostname = hostname
$customHtml = "<html><body><h1>Hello from $hostname</h1></body></html>"
Set-Content -Path "C:\inetpub\wwwroot\index.html" -Value $customHtml
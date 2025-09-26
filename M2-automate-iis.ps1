Install-WindowsFeature -Name Web-Server -IncludeManagementTools

$hostname = hostname
$customHtml = @"
<html>
  <head><title>Hello from $hostname</title></head>
  <body><h1>Hello from $hostname</h1></body>
</html>
"@
Set-Content -Path "C:\inetpub\wwwroot\index.html" -Value $customHtml

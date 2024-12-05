<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task:A script to download powershell7
#>

# Download PowerShell 7 installation script
Set-Location C:\PowerShell
$URI = "https://aka.ms/install-powershell.ps1"
Invoke-RestMethod -Uri $URI | 
Out-File -FilePath C:\PowerShell\Install-PowerShell.ps1
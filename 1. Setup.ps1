<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task:Pre-requisite for upgrading to powershell 7
#>

# Check the exising version
$PSVersiontable
# Set an execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
# Install Nuget as a package provider
Install-PackageProvider Nuget -MinimumVersion 2.8.5.201 -Force | Out-Null
# Install the module
Install-Module -Name PowerShellGet -Force -AllowClobber
# Create a script directory
mkdir c:\PowerShell
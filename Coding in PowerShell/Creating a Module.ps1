<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task:A script to find modules in Powershell
Note: Creating a Module in Powershell
#>

# $PathOfModule = "C:\Users\$env:USERNAME\Documents\PowerShell\Modules\HelloWorld"
$PathOfModule = "C:\Powershell\Coding in PowerShell\Modules\HelloWorld"


$PhilipsModule = @"
# HelloWorld.PSM1
Function Get-HelloWorld {
 "Hello World from Philip Stewart"
}
"@

New-Item -Path $PathOfModule -ItemType Directory -Force | Out-Null
$PhilipsModule | Out-File -FilePath $PathOfModule\HelloWorld.PSM1
Get-Module -Name HelloWorld -ListAvailable
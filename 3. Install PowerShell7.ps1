<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: A script to install PowerShell 7
#>

$MYPARAMS = @{
	UseMSI = $true
	Quiet = $true
	AddExplorerContextMenu = $true
	EnablePSRemoting = $true
}
C:\PowerShell\Install-Powershell.ps1 @MYPARAMS
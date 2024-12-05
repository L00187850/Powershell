<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task:A script to verify that PowerShell 7 is installed
#>

$I = 0
$env:PSModulePath -split ';' |
Foreach-Object {"[{0:N0}] {1}" -f $I++, $_}
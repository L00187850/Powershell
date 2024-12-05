<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task:A script to find modules in Powershell
Note: This command takes some time to run
#>

$PGSM = Find-Module -Name *
"There are {0:N0} Modules in the PS Gallery" -f $PGSM.count
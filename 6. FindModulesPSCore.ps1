<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: A script to find modules which support PSCore. Also a command added to show the total modules available.
Note: This command takes some time to run
#>


$PGSM = Find-Module -Name * -Tag 'PSEdition-Core'
"There are {0:N0} Modules that support Powershell Core" -f $PGSM.count

#get-module -ListAvailable

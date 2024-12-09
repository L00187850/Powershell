<#
Name: Philip Stewart
Student Number L00187850
Date: 09 Dec 2024
Task: Remove the DSC configuration
#>


#Command to remove the Desired state configuration.

$Session = New-CimSession -ComputerName "localhost"
Remove-DscConfigurationDocument -Stage Current -CimSession $Session
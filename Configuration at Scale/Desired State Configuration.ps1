<#
Name: Philip Stewart
Student Number L00187850
Date: 09 Dec 2024
Task: Desired State configuration.
#>

Get-WindowsFeature

#Example of Desired State Configuration.
Configuration DscConfiguration
{
	Node @('localhost', 'server-1')
    param
    (
        [string[]]$ComputerName='localhost'
    )

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    Node $ComputerName
    {
        WindowsFeature MyFeatureInstance
        {
            Ensure = 'Present'
            Name = 'RSAT'
        }

        WindowsFeature My2ndFeatureInstance
        {
            Ensure = 'Present'
            Name = 'DNS'
        }
        File HelloWorld {
            SourcePath = "C:\Users\Administrator\Documents\jor.txt"
            DestinationPath = "C:\Temp\HelloWorld.txt"
            Ensure = "Present"
            Contents   = "Hello World from DSC!"
        }
    }
}
DscConfiguration

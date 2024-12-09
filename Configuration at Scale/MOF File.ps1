<#
Name: Philip Stewart
Student Number L00187850
Date: 09 Dec 2024
Task: Creating a readable MOF file.
#>

/*
@TargetNode='localhost'
@GeneratedBy=administrator
@GenerationDate=09/12/2024 16:16:45
@GenerationHost=DC-1
*/

instance of MSFT_RoleResource as $MSFT_RoleResource1ref
{
ResourceID = "[WindowsFeature]MyFeatureInstance";
 Ensure = "Present";
 SourceInfo = "C:\\PowerShell\\wt4\\dsc1.ps1::10::9::WindowsFeature";
 Name = "RSAT";
 ModuleName = "PsDesiredStateConfiguration";

ModuleVersion = "1.0";

 ConfigurationName = "DscConfiguration";

};
instance of MSFT_RoleResource as $MSFT_RoleResource2ref
{
ResourceID = "[WindowsFeature]My2ndFeatureInstance";
 Ensure = "Present";
 SourceInfo = "C:\\PowerShell\\wt4\\dsc1.ps1::16::9::WindowsFeature";
 Name = "DNS";
 ModuleName = "PsDesiredStateConfiguration";

ModuleVersion = "1.0";

 ConfigurationName = "DscConfiguration";



# applying the configuration.
#Start-DscConfiguration -Path C:\PowerShell\WT4\DscConfiguration -Verbose -Wait -Force
instance of OMI_ConfigurationDocument

                    {
 Version="2.0.0";
 

                        MinimumCompatibleVersion = "1.0.0";
                        CompatibleVersionAdditionalProperties= {"Omi_BaseResource:ConfigurationName"};
                        Author="administrator";
                        GenerationDate="12/01/2022 16:16:45";
                        GenerationHost="DC-1";
                        Name="DscConfiguration";
                    };

#To verify, run the command 
# Get-Content C:\Temp\HelloWorld.txt

#Check the DSC configuration store.
#Get-DscConfiguration
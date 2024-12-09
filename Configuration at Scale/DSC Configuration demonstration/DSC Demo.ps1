<#
Name: Philip Stewart
Student Number L00187850
Date: 09 Dec 2024
Task: configuration at scale, add or remove windows features.
#>


# Here I'm defining the configuration for a web server which also has DNS running.
Configuration WebServerSetup
{
    param (
        [string[]]$SERVERNAME = 'localhost'
    )

    Import-DscResource -ModuleName PsDesiredStateConfiguration

<#Here I'm configuring the node to have specific roles and features, in this instance IIS and DNS.
#In brackets is queries related to each role. In both IIS and DNS i'm giving them names and ensuring
that the role/feature is present. In the DNS client service i'm also adding the startup type as automatic (instead of manual)
and setting the state of the service to run by default.#>

    Node $SERVERNAME
    {
        # Here I am specifying the webserver feature be enabled in the MOF file. I'm using "Ensure" to make sure its present and giving it the name Web-Server.
        WindowsFeature WebServer
        {
            Ensure = 'Present'
            Name   = 'Web-Server'
        }

        # Here I'm making sure DNS is running on the server. Note that it is using different properties to the windows feature.
        Service DNSClient
        {
            Name        = 'Dnscache'
            State       = 'Running'
            StartUpType = 'Automatic'
        }

        # Here I'm having the server pick up the file index.html and moving it to the web-server webpage file location
        File WelcomePage
        {
            SourcePath      = "C:\Powershell\Configuration at Scale\DSC Configuration demonstration\index.html"
            DestinationPath = "C:\inetpub\wwwroot\index.html"
            Ensure          = 'Present'
        }
    }
}

# Here is where I run the config that i've just created. The resulting MOF file is found in the same directory.
WebServerSetup

# Here I'm apply the MOF file I've just created to the current system
Start-DscConfiguration -Path ./WebServerSetup -Wait -Verbose -Force

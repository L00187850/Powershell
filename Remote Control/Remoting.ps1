<#
Name: Philip Stewart
Student Number L00187850
Date: 06 Dec 2024
Task: Creating a piped command in Powershell.
#>

$PLEX-SERVER = 'Philips-Server'

# Connect to Philips Server
Enter-PSSession $PLEX-SERVER
# Do stuff on the remote server
Exit-PSSession
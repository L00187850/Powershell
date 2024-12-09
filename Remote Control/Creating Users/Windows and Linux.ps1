<#
Name: Philip Stewart
Student Number L00187850
Date: 09 Dec 2024
Task: Creating users in Linux and Windows
#>


# Philip Stewart 09 Dec 2024

# Run this script from Powershell ISE only!!
# If its a new account, everything is set
# If its an existing account, only the UNIX attributes are set.

# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Enter a path to your import CSV file
$ScriptPath = Split-Path -Parent -Path $psISE.CurrentFile.FullPath
$CSVPath = $ScriptPath + "\NewUsers.csv"
write-host "Opening" $CSVPath

# Present the list of new users
$ADUsers = Import-csv $CSVPath
$ADUsers | Format-Table

$RemoteComputer="dc1.janus.kmn.ie"

# Prompt to enter the username and password securely
$Credential = Get-Credential

Write-Host "Establishing remote session to $RemoteComputer..."
$RemoteSession = New-PSSession -ComputerName $RemoteComputer -Credential $Credential

if ($RemoteSession) {
    Write-Host "Remote session established. You can now run commands on $RemoteComputer."
    # Enter the remote session
    Enter-PSSession -Session $RemoteSession
} else {
    Write-Host "Failed to establish a remote session. Check the connection and credentials."
}

$OU = "OU=PowerUsers,OU=Users,OU=Janus,DC=janus,DC=kmn,DC=ie"
$UserGroup = "PowerUsers"

foreach ($User in $ADUsers)
{
       $Username    = $User.username
       $Password    = $User.password
       $Firstname   = $User.firstname
       $Lastname    = $User.lastname
       $Department  = $User.department
       $gidNumber   = $User.gidNumber
       $uidNumber   = $User.uidNumber
       $unixHomeDirectory = $User.unixHomeDirectory

       #Check if the user account already exists in AD
       if (Get-ADUser -F {SamAccountName -eq $Username})
       {              
             Write-Warning "A user account $Username has already exist in Active Directory."
       }
       else
       {
            New-ADUser `
            -SamAccountName $Username `
            -UserPrincipalName "$Username@letterkenny.ads.kmn.ie" `
            -Name "$Firstname $Lastname" `
            -GivenName $Firstname `
            -Surname $Lastname `
            -Enabled $True `
            -DisplayName "$Lastname, $Firstname" `
            -Department $Department `
            -Path $OU `
            -AccountPassword (convertto-securestring $Password -AsPlainText -Force)`
            -PasswordNeverExpires $true `
            -CannotChangePassword $false                       
       } 
       
       Set-ADUser -identity $Username -add @{gidnumber=$gidNumber ; uidnumber=$uidNumber ; unixHomeDirectory=$unixHomeDirectory }           
       Add-ADGroupMember -Identity $UserGroup -Members $Username  
}

Exit-PSSession

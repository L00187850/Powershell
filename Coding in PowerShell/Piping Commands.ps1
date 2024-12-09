<#
Name: Philip Stewart
Student Number L00187850
Date: 06 Dec 2024
Task: Creating a piped command in Powershell.
#>

Dir | Format-Table | Out-Host

<#

This outputs a table like below. Note that using the pipe commands it shows the directory, puts it in a table, then 
outputs the result using "Out-Host"
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----          06/12/2024    13:03                Coding in PowerShell
d----          06/12/2024    13:21                Remote Control
-a---          06/12/2024    12:18           3301 .gitignore
-a---          06/12/2024    12:18            499 1. Setup.ps1
-a---          06/12/2024    12:18            324 2. Download PowerShell7.ps1
-a---          06/12/2024    12:18            275 3. Install PowerShell7.ps1
-a---          06/12/2024    12:18            216 4. Verify_PowerShell7.ps1
-a---          06/12/2024    12:18            253 5. FindModules.ps1
-a---          06/12/2024    12:18            387 6. FindModulesPSCore.ps1
-a---          06/12/2024    12:20          41144 Install-PowerShell.ps1
-a---          06/12/2024    12:18           7169 LICENSE
#>
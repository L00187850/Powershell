<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: using variables in PowerShell
#>

#Shows the list of available variables 
Get-Variable 

#Declaring variable
$Simple_Variable = 1, 2, "a", "££"
$Simple_Variable
#How to clear a variable
clear-variable -Name Simple_Variable
$Simple_Variable
Remove-Variable -Name Simple_Variable

#Showing that any type of object can be stored in a variable, like arrays, strings, integers etc.
$Simple_Variable = 1, 2, "a", "££"
$Simple_Variable.GetType()

#Showing a fixed type when casting a variable.
[int]$Simple_Variable = 1
$Simple_Variable

#Showing that by passing a string to variable, it will automatically convert it.
[int]$Simple_Variable = 1
$Simple_Variable = "123456789"
$Simple_Variable.GetType()

#Showing that powershell doesn't work well with converting a string of letters.
[int]$Simple_Variable = 1
$Simple_Variable = "This will give you an error!"
$Simple_Variable

#Translating the date into a datetime object
[datetime]$OGGI = "11/13/2022"
$OGGI

#Showing that if a variable exists, in this example, using PhilipsVariable:\dir_listing. Also write protecting 
# it as it is a constant.
New-Variable PhilipsVariable -value 3.142 -description "PI with write-protection" -option ReadOnly
Get-Variable PhilipsVariable
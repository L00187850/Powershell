<#
Name: Philip Stewart
Student Number L00187850
Date: 06 Dec 2024
Task:A script to find modules in Powershell
Note: Creating a do until loop in Powershell. Added a loop which does multiples of 2
#>

$a = 2
do
{
    “Starting Loop with the number $a”
    $a
	#$a++
    $a+=  2
    “Now `$a is $a”
} until ($a -ge 20)
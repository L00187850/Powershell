<#
Name: Philip Stewart
Student Number L00187850
Date: 06 Dec 2024
Task:A script to find modules in Powershell
Note: Creating a ForEach Loop in Powershell
#>

#This is an example of multiple for each loops being used to specify a full name with spaces

$MyArray = "P", "H", "I", "L", "I", "P"

foreach ($Letter in $MyArray)
{
    $Letter
}

$MySpace = "", "", ""

foreach ($Space in $MySpace)
{
	$Space
}	

$MyLastName = "S", "T", "E", "W", "A", "R", "T"
foreach ($Word in $MyLastName)
{
	$Word
}	

<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: Introduction to Types
#>


$StringValue = "What's the craic!"
$StringValue.ToUpper()
$StringValue.ToLower()

#Showing array types in use
$MyArray = 1,2,3,4,5
$MyArray[1]


# Example of using int for 32-bit numbers and long for64-bit numbers. see information on it below:
<#
These are signed, so an int can store +/- 2^31 values, the first bit denotes positive or negative. 
A long can store +/- 2^63 values. There is also a value for byte.
#>
$LittleNumber = 12345
$LittleNumber.GetType()
$BigNumber = 123456789123456789
$BigNumber.GetType()

#Example of a float in use, these are 32- and 64-bit options again, single/float and double precision numbers

[float]$Floaty32 = 12.12
$Floaty32.GetType()
[double]$Floaty64 = 12345.1234
$Floaty64.GetType()
<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: Introduction to if and elseif
Description:
In informal terms, Conditional Branching occurs in a computer programme when based on a value, the programme jumps to a particular set of instructions. 
Its fundamental, you can find it in higher-level languages, but also down at the processor level in op-codes.
#>
#Types of equality operators
<#
-gt greater than
-igt greater than, case-insensitive
-cgt greater than, case-sensitive
-ge greater than or equal
-ige greater than or equal, case-insensitive
-cge greater than or equal, case-sensitive
-lt less than
-ilt less than, case-insensitive
-clt less than, case-sensitive
-le less than or equal
-ile less than or equal, case-insensitive
-cle less than or equal, case-sensitive
#>

#If and elseif
#if
$Variable1 = 32
$Variable2 = 32
if ( $Variable1 -ne $Variable2  )
{
    Write-Output "The condition was true"
}

#elif
$day = 3

if ( $day -eq 0 ) { $result = 'Sunday'        }
elseif ( $day -eq 1 ) { $result = 'Monday'    }
elseif ( $day -eq 2 ) { $result = 'Tuesday'   }
elseif ( $day -eq 3 ) { $result = 'Wednesday' }
elseif ( $day -eq 4 ) { $result = 'Thursday'  }
elseif ( $day -eq 5 ) { $result = 'Friday'    }
elseif ( $day -eq 6 ) { $result = 'Saturday'  }

$result

#Example of a script using -like
$MyName = "Philip"

if ($MyName -like "Phil*") {
    Write-Output "That's my nickname"
} 

<#his example allows the user to input text. I've put in the first three letters of my name and also added
John O Raws initials. The Elseif statement also looks for his initials and outputs a different result.
#>
$UserInput = Read-Host "Please enter the creators name: "

if ($UserInput -like "Phi*") {
	Write-Output "Thats the bloke!"
}
elseif ($UserInput -like "JOR*") {
	Write-Output "Thats the Lecturer!"
}

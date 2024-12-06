<#
Name: Philip Stewart
Student Number L00187850
Date: 06 Dec 2024
Task:A script to find modules in Powershell
Note: Creating a While loop in Powershell
#>

<#

while($val -ne 3)
{
    $val++
    Write-Host $val
}

while(($inp = Read-Host -Prompt "Select a command") -ne "Q"){
    switch($inp){
       L {"File will be deleted"}
       A {"File will be displayed"}
       R {"File will be write protected"}
       Q {"End"}
       default {"Invalid entry"}
       }
    }
	
#>

while ($value -ne 5)
{
	$value++
	Write-Host "The Value is now: ", $value
}

While (($input = Read-Host -Prompt "Select a command to run. H, A, R or P: ") -ne "P") {
	switch ($input) {
		H {"Hello, How are you"}
		A {"Are you completing this switch"}
		R {"Remember that this switch is nearly completed"}
		P {"This is the end of the switch"}
		default {"Why did you type that? Doesnae work lad!"}
	}
}
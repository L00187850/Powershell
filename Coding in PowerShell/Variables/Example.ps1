<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: example of using variables in a tax calculation
#>
$NET = 523
$VAT = 0.23
$VATAMOUNT = $amount * $VAT
$GROSS = $NET + $VATAMOUNT
$text = "The total €$GROSS is the sum of the net value €$amount with the VAT amount €$VATAMOUNT at $VAT% VAT rate"
$text
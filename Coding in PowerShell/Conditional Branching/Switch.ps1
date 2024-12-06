<#
Name: Philip Stewart
Student Number L00187850
Date: 05 Dec 2024
Task: Introduction to Switch
#>

$day = 4
$Month = 12
switch ( $day )
{
    0 { $result = 'Sunday'    }
    1 { $result = 'Monday'    }
    2 { $result = 'Tuesday'   }
    3 { $result = 'Wednesday' }
    4 { $result = 'Thursday'  }
    5 { $result = 'Friday'    }
    6 { $result = 'Saturday'  }
}
$result
switch ( $Month )
{	
	1 { $Final = 'January'   }
	2 { $Final = 'February'  }
	3 { $Final = 'March'     }
	4 { $Final = 'April'     }
	5 { $Final = 'May' 		 }
	6 { $Final = 'June' 	 }
	7 { $Final = 'July'  	 }
	8 { $Final = 'August'    }
	9 { $Final = 'September' }
	10 { $Final = 'October'  }
	11 { $Final = 'November' }
	12 { $Final = 'December' }
}

$Final
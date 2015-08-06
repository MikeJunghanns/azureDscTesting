Configuration SetTimeZone
{
	Param
	(
		[String]$MachineName,
		[Parameter(Mandatory = $true)]
		[ValidateNotNullorEmpty()]
		[String]$SystemTimeZone="W. Europe Standard Time"   
	)
	
	Node $MachineName
	{
		Write-Host "Hello, setting timezone to " $SystemTimeZone
		tzutil /s $SystemTimeZone    
	}
}

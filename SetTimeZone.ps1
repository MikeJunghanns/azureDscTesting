Configuration SetTimeZone
{
    Param
    (
       [Parameter(Mandatory = $true)]
       [ValidateNotNullorEmpty()]
       [String]$SystemTimeZone="W. Europe Standard Time"
    )
 
    Write-Host "Hello, setting timezone to " $SystemTimeZone
	  tzutil /s $SystemTimeZone    
}

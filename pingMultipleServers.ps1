#### Provide the computer name in $ServerName variable

$ServerName = "192.168.1.X","192.168.2.X"

foreach ($Server in $ServerName) {

		if (test-Connection -ComputerName $Server -Count 2 -Quiet ) { 
		
			write-Host "$Server is alive and Pinging " -ForegroundColor Green
		
					} else
					
					{ Write-Warning "$Server seems dead not pinging"
			
					}	
		
}

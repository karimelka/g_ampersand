#Aanmaken van een forest

$domainName="Ampersand.be"
$netbiosName="AMPERSAND"

Import-Module ADDSDeployment
Install-ADDSForest 
-CreateDnsDelegation:$false `
-DatabasePath 'C:\Windows\NTDS' `
-DomainMode 'Win2012' `
-DomainName $domainName `
-DomainNetbiosName $netbiosName `
-ForestMode 'Win2012' `
-InstallDns:$true `
-LogPath 'C:\Windows\NTDS' `
-NoRebootOnCompletion:$true `
-SysvolPath 'C:\Windows\SYSVOL' `
-Force:$true `

#Script voor het aanmaken van een OU
#Geen gebruik maken van afkortingen
Import-Module ActiveDirectory



Function Add-OU
{
  [cmdletbinding()]
  #Array waarin alle verschillende OC's inzitten
  $OU="Administratie","Verkoop","Aankoop"
  
  foreach($element in $ou)
  {
    New-ADOrganizationalUnit $element -path "dc=ampersand,dc=be"
    Write-Output "De OU $element is toegevoegd"
  }
}

Add-OU

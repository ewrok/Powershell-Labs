# Creating New Organization Unit
New-ADOrganizationalUnit –Name “BranchOffice” –Path“DC=mednovahealth, DC=local”

#Nestd OU
New-ADOrganizationalUnit -Name "TorontoBranch" -Path "OU=BranchOffice, DC=theoffice, DC=local"

#Moving Users to New Organizational UNit
Move-ADObjcet -Identity "CN=Manpreet, CN=Users, DC=theoffice, DC=local" -TargetPath "CN=TorontoBranch, OU=BranchOffice, DC=theoffice, DC=local"

#list all the users in AD
Get-ADUser -Filter *

#list all users filtered by name in AD
Get-ADUser -Filter * | Select-Object Name

#list all the users that has "can" in their name
Get-ADUser -Filter {Name -like "*can*"} | Select-Object Name

#list the dept and manager of the user "John"
Get-ADUser John -Properties Department, Manager | Select-Object Name, Department, Manager

#list the properties of dept, manager for the users woriking in IT dept
Get-ADUser -Filter {Department -eq "IT"} -Properties Office, Department, Manager, Title | Select-Object Name, Title, Department, Manager


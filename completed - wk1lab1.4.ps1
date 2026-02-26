#cmdlet
write-host "hello world"
#Settings for the execution of scripts in Powershell
Get-ExecutionPolicy -List
Output DateTime object
Get-Date -Format hh:mm:ss
#script
Function Get-Time {Get-Date -Format hh:mm}Get-Time
#cmdlet to output modules in the current session
Get-Module -ListAvailable
Get-Command -Name *IP* | Out-Host -Paging
Get-Command -Module NetTCPIP -Name *IP*

#script to launch calc on exit from notepad
Start-Process notepad.exe
$NotepadProc = Get-Process -Name notepad
$NotepadProc.waitForExit()
Start-Process calc.exe

#cmdle to  display basic help information
Get-Help -Name New-ADUser
#cmdlet to diplay example
Get-Help Get-ChildItem -Parameter *
Get-Help Get-ChildItem -Parameter GroupBy
Get-Help about_ *
Get-Help -Parameter *
Get-Help -Example
Get-Help -Detailed
Get-Help -Full
Format-Table -?
#cmdlet to filter Get-Help
Get-Help -Name Remoting

#cmdlet for remoting
Enter-PSSession -ComputerName dc1 -Credential theoffice\administrator
Get-ChildItem C:\
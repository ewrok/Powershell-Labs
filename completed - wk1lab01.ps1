# LAB 1. Enable (and test PowerShell Remoting on Windows Host)
Enable-PSRemoting -Force
Set-Item wsman:\localhost\client\trustedhosts *
Restart-Service WinRM
Test-WsMan <Target IP>

# Running commands
Invoke-Command -ComputerName COMPUTER -ScriptBlock { COMMAND } -credential USERNAME
# cmdlet to view the contents of the C:\ directory on a remote host with the IP address
Invoke-Command -ComputerName <TargetIP> -ScriptBlock { Get-ChildItem C:\ } -credential domain\username
# Remain logged in 
Enter-PSSession -ComputerName <Target IP> -Credential Domain\USER
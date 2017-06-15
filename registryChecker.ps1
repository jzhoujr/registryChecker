#to enable the execution of scripts on this system use the following command:
#Set-ExecutionPolicy RemoteSigned

#to disable the execution of scripts on this system use the following command:
#Set-ExecutionPolicy Restricted

#Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion | Select-Object -ExpandProperty Property
#Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\RegisteredApplications 
Get-ChildItem -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE | Where-Object {$_.Name -match "cl"}
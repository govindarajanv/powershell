# The script check if Textpad is successfully installed or not
Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | .{process{if($_.DisplayName -and $_.UninstallString) { $_ } }}
| Select DisplayName, Publisher, InstallDate, DisplayVersion, UninstallString |Sort DisplayName | where {$_.DisplayName -like "*Textpad*" }

#another way to check
if ((Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -eq "WebEx Productivity Tools"}).Version -eq "2.82.7000.1167") { Return $True } Return $False

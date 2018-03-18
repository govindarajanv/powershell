# The script check if Textpad is successfully installed or not
Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | .{process{if($_.DisplayName -and $_.UninstallString) { $_ } }}
| Select DisplayName, Publisher, InstallDate, DisplayVersion, UninstallString |Sort DisplayName | where {$_.DisplayName -like "*Textpad*" }

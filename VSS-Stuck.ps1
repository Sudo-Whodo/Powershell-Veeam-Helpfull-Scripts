Get-Process | Where-Object {$_.Name -eq "VSSVC"} | Select-Object -First 1 | Stop-Process -Confirm

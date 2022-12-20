"D", "E", "F", "G" | ForEach-Object {Get-ChildItem -directory $_":\Backups\*" | Select-Object FullName | ForEach-Object {Get-ChildItem -Path $_.FullName -recurse | Where{$_.LastWriteTime -le (Get-Date).AddDays(-30)} | where {$_.extension -in ".vbk",".vib"} | Select-Object FullName,LastAccessTime}} | export-csv -Path c:\temp\OrphanedChains.csv -NoTypeInformation 



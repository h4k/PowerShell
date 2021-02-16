$PathsToList = @(
    '\\192.168.1.xxx\share', 
    '\\192.168.2.xxx\share2' 
)

$OutputPath = "D:\#ListOfFiles_$(get-date -f yyyy-MM-dd).txt"

get-childitem -Path $PathsToList -Depth 1 | Where-Object { $_.Name -NotLike '*\#recycle'} | out-file $OutputPath

Write-Output "DONE: $OutputPath"

$TVPath = "E:\Media\TV"
$MoviePath = "E:\Media\Movies"
$CorruptedTV = Get-ChildItem -r -Path $TVPath | Where-Object Length -eq 0 | Resolve-Path 
$CorruptedMovie = Get-ChildItem -r -Path $MoviePath | Where-Object Length -eq 0 | Resolve-Path 

#mkdir "E:\Media\Corrupted Files"
#mkdir "E:\Media\Corrupted Files\Corrupted Movies"
#mkdir "E:\Media\Corrupted Files\Corrupted TV"

Move-Item -Path $CorruptedTV -Destination "E:\Media\Corrupted Files\Corrupted TV" 
Move-Item -Path $CorruptedMovie -Destination "E:\Media\Corrupted Files\Corrupted Movies" 
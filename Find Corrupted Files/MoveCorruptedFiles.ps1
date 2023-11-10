$TVPath = "E:\Media\TV"
$MoviePath = "E:\Media\Movies"
$CorruptedTV = Get-ChildItem -r -Path $TVPath | Where-Object Length -eq 0
$CorruptedMovie = Get-ChildItem -r -Path $MoviePath | Where-Object Length -eq 0

mkdir "E:\Media\Corrupted Files"
mkdir "E:\Media\Corrupted Files\Corrupted Movies"
mkdir "E:\Media\Corrupted Files\Corrupted TV"

Copy-Item "E:\Media\TV\$CorruptedTV" "E:\Media\Corrupted Files\Corrupted TV" 
Copy-Item "E:\Media\Movies\$CorruptedTV" "E:\Media\Corrupted Files\Corrupted Movies" 
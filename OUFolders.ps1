
$filePath = Get-Content -Path organizationUnit.txt -TotalCount 2 | Select-Object -Skip 1

$mainFolderPath = "C:\$filePath"

$subfolderNames = (Get-Content organizationUnit.txt) | Select-Object -skip 2

New-Item -ItemType Directory -Path $mainFolderPath

foreach ($subfolderName in $subfolderNames) {
$subfolderPath = Join-Path -Path $mainFolderPath -ChildPath $subfolderName
New-Item -ItemType Directory -Path $subfolderPath
}

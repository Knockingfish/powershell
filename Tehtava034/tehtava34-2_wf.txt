#William Fabian
$directoryPath = ".\kuvia ja tiedostoja"
$imageFiles = Get-ChildItem -Path $directoryPath -Include "*01.jpg", "*02.jpg", "*03.jpg", "*04.jpg" -Recurse -File
foreach ($imageFile in $imageFiles) {
    Start-Process $imageFile.FullName
}

$folderPath = ".\Wallpapers"

while($true) {
    $image = Get-ChildItem -Path $folderPath -Filter *.jpg | Get-Random
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value $image.FullName
    RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
    Start-Sleep -Seconds 2
}

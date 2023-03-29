# William Fabian

$path = (Get-Location).Path

foreach ($file in (Get-ChildItem -File $path)) {¨
    $folders = "$($path)\$($file.extension.trimstart('.'))"
    New-Item $folders -ItemType Directory
    Move-Item $file $folders
}
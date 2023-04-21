#William Fabian
Import-Module -Name Convert2PDF

$documents = Get-ChildItem -Path "." -Recurse -File | Where-Object {$_.Name -like '*Tärkeä*'} | Select-Object FullName
foreach ($document in $documents) {
	$pdfPath = Join-Path $document.Directory.FullName ($document.BaseName + ".pdf") -ErrorAction SilentlyContinue
	Convert2PDF $document.FullName
}

$pdfs = Get-ChildItem -Path "." -Recurse -File -Filter *.pdf

New-Item -ItemType Directory -Path ".\pdfkansio"

Move-Item -Path $pdfs.FullName -Destination ".\pdfkansio"

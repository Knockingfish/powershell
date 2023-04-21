#William Fabian
Import-Module -Name Convert2PDF

$files = Get-ChildItem -Path "." -Filter "*.docx" -Recurse

foreach ($file in $files) {
	$pdfPath = Join-Path $file.Directory.FullName ($file.BaseName + ".pdf")
	Convert2PDF -FILE_PATH $file.FullName
}

# Import the ReadPDF module
Import-Module ReadPDF

$pdfs = Get-ChildItem -Path . -Filter *.pdf -Recurse

New-Item -ItemType Directory -Path .\PDF

foreach ($pdf in $pdfs) {
    $newName = ($pdf.Name -split ' ')[0..2] -join ' '
    Rename-Item -Path $pdf.FullName -NewName "$newName.pdf"
    Start-Sleep -Milliseconds 500
}

$pdfs = Get-ChildItem -Path . -Filter *.pdf -Recurse

foreach ($pdf in $pdfs) {
    $newName = $pdf.Name
    Move-Item -Path $pdf.FullName -Destination ".\PDF\$newName"
}

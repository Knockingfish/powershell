New-Item -Path . -Name testfolder -ItemType Directory;
    cd testfolder;
        New-Item -Path . -Name "helloworld.txt" -ItemType "file" -Value "Hello World!";
Write-Output "Hello World";
    Read-Host -Prompt 'Press any key to continue...'

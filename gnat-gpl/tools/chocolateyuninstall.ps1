

$packageName   = 'gnat-gpl'
$installerType = 'EXE'
$silentArgs    = "--script $($env:ChocolateyPackageFolder)\tools\uninstall.qs"
$file          = "C:\GNAT\maintenancetool.exe"

Uninstall-ChocolateyPackage -PackageName $packageName `
                            -FileType $installerType `
                            -SilentArgs "$silentArgs" `
                            -File "$file"



$packageName  = 'gnat-gpl'
$fileType     = 'exe'
$url          = 'https://community.download.adacore.com/v1/966801764ae160828c97d2c33000e9feb08d4cce?filename=gnat-2020-20200429-x86_64-windows-bin.exe'
$silentArgs   = "--script $($env:ChocolateyPackageFolder)\tools\install.qs"
$checksum     = '966801764ae160828c97d2c33000e9feb08d4cce'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum $checksum -ChecksumType $checksumType
Install-ChocolateyPath -PathToInstall 'C:\GNAT\bin'
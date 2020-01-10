

$packageName  = 'gnat-gpl'
$fileType     = 'exe'
$url          = 'https://community.download.adacore.com/v1/c13b2d02d23057d9251bcdc9a073cb932177f016?filename=gnat-community-2019-20190517-x86_64-windows-bin.exe'
$silentArgs   = "--script $($env:ChocolateyPackageFolder)\tools\install.qs"
$checksum     = 'c13b2d02d23057d9251bcdc9a073cb932177f016'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum $checksum -ChecksumType $checksumType
Install-ChocolateyPath -PathToInstall 'C:\GNAT\bin'
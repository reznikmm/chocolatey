

$packageName  = 'gnat-gpl'
$fileType     = 'exe'
$url          = 'http://mirrors.cdn.adacore.com/art/5ce0326131e87a8f1d425400'
$silentArgs   = "--script $($env:ChocolateyPackageFolder)\tools\install.qs"
$checksum     = 'c13b2d02d23057d9251bcdc9a073cb932177f016'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum $checksum -ChecksumType $checksumType
Install-ChocolateyPath -PathToInstall 'C:\GNAT\bin'
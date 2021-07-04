﻿

$packageName  = 'gnat-gpl'
$fileType     = 'exe'
$url          = 'https://community.download.adacore.com/v1/797dbae8bdb8a3f661dad78dd73d8e40218a68d8?filename=gnat-2021-20210519-x86_64-windows64-bin.exe'
$silentArgs   = "--script $($env:ChocolateyPackageFolder)\tools\install.qs"
$checksum     = '797dbae8bdb8a3f661dad78dd73d8e40218a68d8'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum $checksum -ChecksumType $checksumType
Install-ChocolateyPath -PathToInstall 'C:\GNAT\bin'
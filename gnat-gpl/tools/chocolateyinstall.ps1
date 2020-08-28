

$packageName  = 'gnat-gpl'
$fileType     = 'exe'
$url          = 'https://community.download.adacore.com/v1/85091aafe5cb9463f1bfa20a53b6aa0931bf9fc2?filename=gnat-2020-20200818-x86_64-windows-bin.exe'
$silentArgs   = "--script $($env:ChocolateyPackageFolder)\tools\install.qs"
$checksum     = '85091aafe5cb9463f1bfa20a53b6aa0931bf9fc2'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum $checksum -ChecksumType $checksumType
Install-ChocolateyPath -PathToInstall 'C:\GNAT\bin'
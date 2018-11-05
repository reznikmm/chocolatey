

$packageName  = 'gnat-gpl'
$fileType     = 'exe'
$url          = 'http://mirrors.cdn.adacore.com/art/5b30f4e6c7a4477116360355'
$silentArgs   = "--script $($env:ChocolateyPackageFolder)\tools\install.qs"
$checksum     = '18181e5631662c55214c5e39a689995dfa8c627f'
$checksumType = 'sha1'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum $checksum -ChecksumType $checksumType
Install-ChocolateyPath -PathToInstall 'C:\GNAT\bin'
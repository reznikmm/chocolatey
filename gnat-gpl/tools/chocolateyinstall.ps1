
$ErrorActionPreference = 'Stop';

$packageName= 'gnat-gpl'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://mirrors.cdn.adacore.com/art/573c8c8aa3f5d77ed6451618'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'gnat-gpl*'

  checksum      = 'fa28b759216fa227891eb0ea5fa125b23eef0304'
  checksumType  = 'sha1'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath -PathToInstall "$($env:SystemDrive)\GNATPRO\bin"


















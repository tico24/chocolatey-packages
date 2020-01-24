$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '3687414010b5b422b4a214d07a0f2e5131241bf3f3d96e7aede3dac0f2530262'
  ChecksumType        = 'sha256'
  Checksum64          = '302d0d52805e398ade68a4f090361d5469b29650de594ea38f2870bcda389f6a'
  version             = '1.3.2'  
}

Install-ChocolateyZipPackage @packageArgs
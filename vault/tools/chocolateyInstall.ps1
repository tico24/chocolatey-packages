$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '68f8e01d23df3257e6c493a053cc45f3385d4cb8df11e635315a88a0782eb892'
  ChecksumType        = 'sha256'
  Checksum64          = '3f1bf837f548a371e3adaf5d8ba95e4ce1f6e0c14e98dda2fa620d51d3844f31'
  version             = '1.5.2'  
}

Install-ChocolateyZipPackage @packageArgs
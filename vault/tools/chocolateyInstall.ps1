$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '18dc970ae09996cf4c9c58fbdba02206557a3c11844f659547ddbb1e48921e10'
  ChecksumType        = 'sha256'
  Checksum64          = 'add7f9bee392accfda40a330bccd84dac5f00fb87d1fc143185ec4d39e96a0e3'
  version             = '1.3.3'  
}

Install-ChocolateyZipPackage @packageArgs
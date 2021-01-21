$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '1d21d2195b4a1b2cae9d34b51fa4d04803337a7dce0395dae550fb2a05f10a48'
  ChecksumType        = 'sha256'
  Checksum64          = '4a9b0c803098e745f22bdd510205803ceb4c800fb9c89810c784b6a9e9abc4a4'
  version             = '1.6.1'  
}

Install-ChocolateyZipPackage @packageArgs
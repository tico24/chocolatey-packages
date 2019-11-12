$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'ca0c2d6dcb08570e08f7e5154501ac0ce5ab14520086615b4a5767fe12daed30'
  ChecksumType        = 'sha256'
  Checksum64          = '0f8931876b382ba558c5d061442d95df793a28b1c7b7a799b1ab33204670c2a8'
  version             = '1.2.4'  
}

Install-ChocolateyZipPackage @packageArgs
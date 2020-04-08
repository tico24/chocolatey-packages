$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '99a3a30db2508ff75fc52b1976f4144baeaf668ccbba0d73c38ff6c984921773'
  ChecksumType        = 'sha256'
  Checksum64          = 'fc4ebb5c0473359effda328556763e5bc5d5da526e4b035d7f892d05b045c0a2'
  version             = '1.4.0'  
}

Install-ChocolateyZipPackage @packageArgs
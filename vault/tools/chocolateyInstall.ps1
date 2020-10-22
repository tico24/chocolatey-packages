$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'a74568ec0a30d5da0931b8e8e5431f7a9a9dce32b178c0442cafe90db4508026'
  ChecksumType        = 'sha256'
  Checksum64          = '63118e0f8d377dcb9361b7edae5b22c24fdfb4410fb7d50bc49efe17da02580d'
  version             = '1.5.5'  
}

Install-ChocolateyZipPackage @packageArgs
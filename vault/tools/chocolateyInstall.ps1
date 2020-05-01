$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '17fd230b611c23960257c95b5b486ec3a7edbd88647f176bd37aa2729fdb91bf'
  ChecksumType        = 'sha256'
  Checksum64          = '27fc88f1f02335a4d033b6a03f5592f8628ef693395baad0e123c1fff25a391e'
  version             = '1.4.1'  
}

Install-ChocolateyZipPackage @packageArgs
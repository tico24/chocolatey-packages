$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '972f92ad138c841ffb5433410256e969c97dacc5f02e2a949e8c55d3fabb39b3'
  ChecksumType        = 'sha256'
  Checksum64          = '7c90485e3ca4bc2c7733539f156ae2246721b5b7fc16e2d4fa6117a94318bf54'
  version             = '1.2.3'  
}

Install-ChocolateyZipPackage @packageArgs
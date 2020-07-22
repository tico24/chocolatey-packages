$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'dbaefb222f9e69303a95230d5ae4d5eb2a845aeb4a281d00d971f68849dba318'
  ChecksumType        = 'sha256'
  Checksum64          = 'e870752221027a23c44302b4ab98ef0fd0435f78a901c22d85c6f43429f0047f'
  version             = '1.5.0'  
}

Install-ChocolateyZipPackage @packageArgs
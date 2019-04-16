$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'b9b811d79bada1368b7cfb04eb5fffc3b12f97bf9b462a1c081e78b81be3b6f7'
  ChecksumType        = 'sha256'
  Checksum64          = '2d52fa7923244a9199ed16b475633ee51d1940cadfe3f914b7d9622de4a186b5'
  version             = '1.1.0'  
}

Install-ChocolateyZipPackage @packageArgs
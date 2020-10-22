$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'a3a2e541bdb0f5cb3f6f2abcb9c4bab604692041c2a2c8294dc896f22754b67f'
  ChecksumType        = 'sha256'
  Checksum64          = 'a254b5b54fe25b17a069abfff994f5aa884fb75f3575a8d11b76fb95d565e7d0'
  version             = '1.5.4'  
}

Install-ChocolateyZipPackage @packageArgs
$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '970aff002cfc174ffd9a1af7067a1c80fe399db2a8ba691e5eb25dc62cfcfe4b'
  ChecksumType        = 'sha256'
  Checksum64          = '7baca3e91601830d958222cc106ecfb2fef2853cc6b55af4cb2fa2195c5c7c22'
  version             = '1.2.1'  
}

Install-ChocolateyZipPackage @packageArgs
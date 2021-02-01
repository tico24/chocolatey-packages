$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '4dfa12f1a36df0cb000c394525ea8237b55c878d6abfaca2a5448e59f958eceb'
  ChecksumType        = 'sha256'
  Checksum64          = '0cf6cf125b543eda37e0915f7a57253052358681be9f2a95eb3bf3a1f3cfae28'
  version             = '1.6.2'  
}

Install-ChocolateyZipPackage @packageArgs
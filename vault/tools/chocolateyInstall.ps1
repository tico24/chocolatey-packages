$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '66f86ebdfb0bb40ec75eeca9b9c6b928b531bea5cad7f03ba2d751115188a5eb'
  ChecksumType        = 'sha256'
  Checksum64          = '2a7ca03ad36188e910707c0b22c17d25b850a142a2eec4f7177c98c4dbdfb150'
  version             = '1.4.3'  
}

Install-ChocolateyZipPackage @packageArgs
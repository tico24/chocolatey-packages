$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'da54d57f08f7b8b302de027d6e4061dbd4ed1f473913806175c26ffb48f85b40'
  ChecksumType        = 'sha256'
  Checksum64          = '576d9a5d41706e763deb7af40802eefe2c7c36a5488acb2ab9c37ba60827dd37'
  version             = '1.2.2'  
}

Install-ChocolateyZipPackage @packageArgs
$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'effc19c4e956ed1edec517673a075048e2abf1b19eec175ca3f0dff7d292425e'
  ChecksumType        = 'sha256'
  Checksum64          = '26ff508fe605f2163998714256900d4722ba8023d43d12f4085154866e7f8b76'
  version             = '1.5.3'  
}

Install-ChocolateyZipPackage @packageArgs
$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '3f5d7dbe21e09d7a5b55b769123480793500186fe953c7ceb3ddca6836d57f25'
  ChecksumType        = 'sha256'
  Checksum64          = '3703e3862653d38ba8dae0e8479f98924d2400c872922aaf3c3922988240464c'
  version             = '1.3.1'  
}

Install-ChocolateyZipPackage @packageArgs
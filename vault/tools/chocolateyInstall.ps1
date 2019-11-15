$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'e66e17bb9b524c839f8e32018d0c812a75a8a6cb15506ea7f14dced2bd8db47e'
  ChecksumType        = 'sha256'
  Checksum64          = '153c608f5acfdf2a5b9f52c4b45aed4d194074a0598b2a2804a4ac75641516ab'
  version             = '1.3.0'  
}

Install-ChocolateyZipPackage @packageArgs
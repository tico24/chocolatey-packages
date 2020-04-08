$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = '86d456f93fec1558df17dabe22241e12f41149c76c91918384a07539302b2081'
  ChecksumType        = 'sha256'
  Checksum64          = '7c7269e1adc4b0f16f6af25047c9c67bcc64be0c1ff356dab2bcc6af843c7731'
  version             = '1.3.4'  
}

Install-ChocolateyZipPackage @packageArgs
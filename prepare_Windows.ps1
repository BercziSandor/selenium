mkdir -Force tmp
$progresspreference = 'silentlyContinue'

Invoke-WebRequest https://dl-ssl.google.com/linux/linux_signing_key.pub -OutFile tmp\linux_signing_key.pub
If ( -Not(Test-Path -Path tmp\google-chrome-stable_current_amd64.deb) ) {
    Invoke-WebRequest https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -OutFile tmp\google-chrome-stable_current_amd64.deb
}

$progressPreference = 'Continue'
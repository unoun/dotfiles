#
$ScriptDir = Split-Path $MyInvocation.MyCommand.Path -Parent

#
oh-my-posh init pwsh --config $ScriptDir\config.omp.json | Invoke-Expression

#
[System.Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($false)
$OutputEncoding = [System.Console]::OutputEncoding

#
$env:JUPYTER_CONFIG_DIR = "$(Split-Path -Path $ScriptDir)\.jupyter"

#
Remove-Variable ScriptDir
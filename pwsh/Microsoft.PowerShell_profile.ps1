# 01 INIT
. "~\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe" init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression

# 02 MACROS

# FOLDER TELEPORT
function f{
    param(
        [string]$folder
    )
    switch($folder.toLower()){
        "mv" {Set-Location "D:\Movies"}
        "ctf" {Set-Location "D:\CTF"}
        "ui" {Set-Location "D:\UI"}
        default {Write-Host "Error: $folder not a keyword" -ForegroundColor Red}
    }
}


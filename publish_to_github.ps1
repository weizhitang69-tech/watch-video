param(
  [Parameter(Mandatory = $true)]
  [string]$RepoUrl
)

$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location -LiteralPath $Root

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  Write-Error "Git was not found on PATH."
}

if (-not (Test-Path -LiteralPath (Join-Path $Root ".git"))) {
  git init
  git branch -M main
}

if (-not (git remote 2>$null | Select-String -SimpleMatch "origin")) {
  git remote add origin $RepoUrl
} else {
  git remote set-url origin $RepoUrl
}

git add .
git commit -m "Publish 480p HLS video site"
git push -u origin main

Write-Output ""
Write-Output "Push complete. Enable GitHub Pages from Settings -> Pages -> Deploy from a branch -> main / root."

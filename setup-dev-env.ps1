param([string]$TargetDirectory = (Join-Path $PWD 'generated-app'))
$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path $TargetDirectory | Out-Null
Copy-Item (Join-Path $PSScriptRoot 'package.json') $TargetDirectory -Force
Copy-Item (Join-Path $PSScriptRoot 'server.js') $TargetDirectory -Force
Copy-Item (Join-Path $PSScriptRoot 'Dockerfile') $TargetDirectory -Force
Copy-Item (Join-Path $PSScriptRoot '.dockerignore') $TargetDirectory -Force
Write-Host "Project files created in $TargetDirectory"
Write-Host 'Next: docker build -t devops-lab2-app .' 

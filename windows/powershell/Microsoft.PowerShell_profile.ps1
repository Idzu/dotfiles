oh-my-posh init pwsh --config 'C:\Users\andre\AppData\Local\Programs\oh-my-posh\themes\zash.omp.json' | Invoke-Expression

Import-Module Terminal-Icons
Import-Module PSReadLine
Import-Module posh-git
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -PredictionViewStyle ListView

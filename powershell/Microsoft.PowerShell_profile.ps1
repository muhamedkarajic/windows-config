Clear-Host
if ($env:TERM_PROGRAM -eq "vscode") {
  Set-PSReadLineKeyHandler -Chord 'Ctrl+w' -Function BackwardKillWord
}

function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}
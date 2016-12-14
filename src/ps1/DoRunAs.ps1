###############################################################################
#
# à¯êîÇ≈ó^Ç¶ÇÁÇÍÇΩï∂éöóÒÇä«óùé“å†å¿Ç≈é¿çsÇ∑ÇÈ
#
###############################################################################
Param([string]$batch_file)
$log_path = $MyInvocation.MyCommand.Path -replace "\.ps1", ".log"
$ErrorActionPreference = "Stop"
set-psdebug -strict
try {
  $cmd = "C:\Windows\System32\cmd.exe"
  $args = @("", "")
  $args[0] = "/c"
  $args[1] = $batch_file
  [String]::Format("{0} {1} {2}", $cmd, $args[0], $args[1]) |
    out-file -encoding string $log_path
  Start-Process -FilePath $cmd -ArgumentList $args -Verb runas
} catch {
  $error[0] | out-file -encoding string $log_path -append
  exit 9
}
exit 0

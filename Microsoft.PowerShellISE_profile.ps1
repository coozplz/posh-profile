$PROFILE_PARENT = Split-Path -Parent -Path $PROFILE

$SCRIPTS = @('load-modules.ps1')

# ---------------------------------------------------------------------------------------
#                              LOAD CUSTOM SCRIPT
# ---------------------------------------------------------------------------------------
foreach ($script in $SCRIPTS) {
    $scriptPath = Join-Path $PROFILE_PARENT -ChildPath $script    
    . "$scriptPath"
}

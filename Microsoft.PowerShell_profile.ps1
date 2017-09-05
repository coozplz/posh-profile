$PROFILE_PARENT = Split-Path -Parent -Path $PROFILE

$SCRIPTS = @('git-alias.ps1', 'coozplz-alias.ps1', 'color-theme.ps1', 'load-modules.ps1')

# ---------------------------------------------------------------------------------------
#                              LOAD CUSTOM SCRIPT
# ---------------------------------------------------------------------------------------
foreach ($script in $SCRIPTS) {
    $scriptPath = Join-Path $PROFILE_PARENT -ChildPath $script    
    . "$scriptPath"
}



# ---------------------------------------------------------------------------------------
#                              GIT CONFIGURATION
# ---------------------------------------------------------------------------------------

# Git 로그에서 한글 출력이 안되는 문제가 있어 Git 출력 인코딩 변경
$env:LC_ALL='C.UTF-8'



# ---------------------------------------------------------------------------------------
#                              XAMPP PATH CONFIGURATION
# ---------------------------------------------------------------------------------------
$xampp_home = "D:\xampp\"
$php_path = Join-Path -Path (Get-Item -Path $xampp_home).FullName -ChildPath 'php'
Add-To-Path -DirectoryPath $php_path

$mysql_path = Join-Path -Path (Get-Item -Path $xampp_home).FullName -ChildPath 'mysql\bin' 
Add-To-Path -DirectoryPath $mysql_path




# ---------------------------------------------------------------------------------------
#                              Nodejs(NPM) PATH CONFIGURATION
# ---------------------------------------------------------------------------------------
$nodeModulePath = "$env:APPDATA\npm"
Add-To-Path -DirectoryPath $nodeModulePath


# ---------------------------------------------------------------------------------------
#                              Composer PATH CONFIGURATION
# ---------------------------------------------------------------------------------------
$composerPath = "$env:APPDATA\Composer\vendor\bin"
Add-To-Path -DirectoryPath $composerPath


# ---------------------------------------------------------------------------------------
#                              SublimeText3 PATH CONFIGURATION
# ---------------------------------------------------------------------------------------
$SublimeTextHome = "C:\Program Files\Sublime Text 3"
Add-To-Path -DirectoryPath $SublimeTextHome
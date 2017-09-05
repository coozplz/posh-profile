<#
		.NOTES
		================================================================================
		Created on: 09.05.2017
		Created by: Coozplz
		Version   : 0.1
		Filename  : load-modules.ps1
#>

function Install-Custom-Modules 
{
	# 모듈이 설치 되어 있는지 확인하고 설치되지 않았다면 설치합니다.
  
	param(
		[Parameter(Mandatory=$True)]        
		[string] $ModuleName
	)
    
	if (Get-Module -ListAvailable -Name $ModuleName) {
		return    
	}
	Install-Module $ModuleName
}

function Install-Modules-For-ISE
{
	# ISE 개발 환경을 위해 필요한 모듈을 설치한다.
	
	begin
	{
		$ISE_MODUELS = @('ISESteroids')	
	}	

	process
	{
		Write-Host "ISE Module loading...."
		foreach ($module in $ISE_MODUELS) {
			Install-Custom-Modules -ModuleName $module
			Import-Module $module          
		}
	}
}



function Install-Modules-For-Console
{
	# 콘솔 환경에 필요한 모듈을 설치한다.
  
	begin
	{
		$CONSOLE_MODULES = @('PSColor', 'Posh-Git', 'PSReadLine', 'ColorHost', 'Find-String', 'PsGet')  
	}
	
	process
	{
		foreach ($ConsoleModule in $CONSOLE_MODULES)
		{
			Install-Custom-Modules -ModuleName $ConsoleModule    
			Import-Module $ConsoleModule			
			if ($ConsoleModule -eq 'PSReadLine') {
				Set-PSReadlineOption -EditMode Emacs				
			}
		}		
	}
}


if ($host.name -eq 'ConsoleHost') {
    Install-Modules-For-Console
} else {
    Install-Modules-For-ISE
}

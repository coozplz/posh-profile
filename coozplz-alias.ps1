function l {
    

	Get-ChildItem | Sort-Object -property @{Expression="Mode";Descending=$true}, @{Expression="Name";Descending=$false;} 
}


function Tail {
	<#    
			.DESCRIPTION
			로그 파일을 조회한다. Tail과 마찬가지로 실시간 갱신이 되도록 한다.
    
			.PARAMETER $LogPath
			로그 파일 경로
	 #>
	param
	(
		[Parameter(Mandatory=$True, ValueFromPipeline=$True, ValueFromPipelineByPropertyName=$True)]                
		[string] $LogPath        
	)
    
	process {
		Get-Content -Path $LogPath -Wait
	}
}


function his {
	<#
	
			파워쉘 히스토리를 효율적으로 조회하도록 한다.
			Dependency: PSReadLine, ColorHost
	#>
	param
	(
		[Parameter(Mandatory=$False, ValueFromPipeline=$True, ValueFromPipelineByPropertyName=$True)]                
		[int] $Count = 50        
	)
	
	$Commands = Get-Content -Encoding UTF8 (Get-PSReadlineOption).HistorySavePath | Select-Object -Last $Count	
	for ($index = (($Commands | Measure-Object -Line).Lines - 1); $index -ge 0; $index = $index-1) 
	{
		$length = ([string]$Count).Length
		$IndexFormat = "{0, $length} "
		Write-ColorHost -ForegroundColor DarkBlue ([System.String]::Format($IndexFormat, $index + 1)) -NoNewLine
		Write-ColorHost -ForegroundColor DarkYellow $Commands[$Count-1-$index]			
	}
	
}


function Add-To-Path {
	<#
			.DESCRIPTION
			PATH 환경변수에 해당 디렉토리를 추가한다.
    
			.PARAMETER $DirectoryPath
			디렉토리 경로
	#>
	param
	(
		[Parameter(Mandatory=$True, ValueFromPipeline=$True, ValueFromPipelineByPropertyName=$True)]                
		[string] $DirectoryPath
	)

	process { 
		if (-Not (Test-Path -Path $DirectoryPath)) {
			Write-Debug "$DirectoryPath is not exist"
			return
		}

		if ($env:Path.IndexOf($DirectoryPath) -cge 0) {
			return
		}

		if (-Not $env:Path.EndsWith(';')) {
			$env:Path += ';'
		}

		$env:Path += $DirectoryPath        
		Write-Debug "$DirectoryPath is adding to PATH"
	}
}

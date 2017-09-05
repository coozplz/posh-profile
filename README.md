# Powershell Profile

---

파워쉘을 효율적으로 사용하기 위한 로딩 스크립트 모음
스크립트는 `ISE`와 `Console`을 위한 라이브러리를 로딩한다.


### **ISE 라이브러리**

`ISE` 프로그램에서 기본적으로 제공되지 않는 기능들을 플러그인 형태로 추가하여 효율적인 `Powershell` 코딩을 할 수 있도록 하는 라이브러리가 포함된다.

- [ISESteroids](http://www.powertheshell.com/isesteroids/) : 정적 분석, 리팩토링, 코드 템플릿등 많은 기능을 제공한다.


### **CONSOLE 라이브러리**

`Powershell`을 `cmd` 대신 사용할 경우 유용한 라이브러리들이 포함된다.

- [posh-git](https://github.com/dahlbyk/posh-git) : 디렉토리의 git 상태를 커맨드 라인에서 쉽게 확인할 수 있도록 도와준다. 
- [color-host](https://github.com/weirdpattern/color-host) : `Write-Host` 명령의 `ANSI` 색상을 사용할 수 있도록 해준다.
- [PSColor](http://www.powertheshell.com/isesteroids/) : 파일과 디렉토리의 색상을 분리하여 표시하도록 한다. [ConEmu](https://conemu.github.io/)와 함께 사용하면 훨씬 보기 좋아진다.
- [PSReadLine](https://github.com/lzybkr/PSReadLine) : 파워쉘에서 명령 편집시 `Emacs` 스타일을 사용할 수 있도록 해준다. `Emacs` 스타일을 리눅스 기본 편집 스타일이다.


### **Update History**

|---|---|
|2017.09.05|최초작성|
IF %DATE:~0,3% == Mon SET desc="World Is Mine Radio Show - Metzker Viktoria, Jauri - %DATE:~5%"
IF %DATE:~0,3% == Tue SET desc="World Is Mine Radio Show - Purebeat, Strong R. - %DATE:~5%"
IF %DATE:~0,3% == Wed SET desc="World Is Mine Radio Show - Yamina, Adam Ajkay - %DATE:~5%"
IF %DATE:~0,3% == Thu SET desc="World Is Mine Radio Show - Willcox, Newik - %DATE:~5%"
IF %DATE:~0,3% == Fri SET desc="World Is Mine Radio Show - Nigel Stately, Andro - %DATE:~5%"
IF %DATE:~0,3% == Sat SET desc="World Is Mine Radio Show - Housematic, StadiumX - %DATE:~5%"
IF %DATE:~0,3% == Sun SET desc="World Is Mine Radio Show - Bricklake, Loving Arms - %DATE:~5%"


START "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\OBS Studio (64bit).lnk"
timeout 45 > NUL
C:\Users\leven\Downloads\OBSCommand\OBSCommand.exe /startrecording
timeout 11100 > NUL
C:\Users\leven\Downloads\OBSCommand\OBSCommand.exe /stoprecording
timeout 45 > NUL
taskkill /F /IM obs64.exe

pushd C:\users\leven\Documents\Youtube
.\YoutubeCLI.exe -Mode Video -Operation Add -File "D:\Other\YT leech\radio1.mov" -Title %desc% -CategoryID 1

timeout 45 > NUL
shutdown /s /f /t 600


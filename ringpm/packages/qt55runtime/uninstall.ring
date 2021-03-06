func main
	? "Removing Files : Qt 5.5 runtime"
	cDir = CurrentDir()
	chdir(exefolder()+"../bin")
	OSDeleteFolder("audio")
	OSDeleteFolder("bearer")
	OSDeleteFolder("iconengines")
	OSDeleteFolder("imageformats")
	OSDeleteFolder("mediaservice")
	OSDeleteFolder("platforms")
	OSDeleteFolder("playlistformats")
	OSDeleteFolder("position")
	OSDeleteFolder("printsupport")
	OSDeleteFolder("sensorgestures")
	OSDeleteFolder("sensors")
	OSDeleteFolder("sqldrivers")
	OSDeleteFolder("translations")
	remove("icudt54.dll")
	remove("icuin54.dll")
	remove("icuuc54.dll")
	remove("libstdc++-6.dll")
	remove("libwinpthread-1.dll")
	remove("Qt5Bluetooth.dll")
	remove("Qt5Core.dll")
	remove("Qt5Declarative.dll")
	remove("Qt5Gui.dll")
	remove("Qt5Multimedia.dll")
	remove("Qt5MultimediaWidgets.dll")
	remove("Qt5Network.dll")
	remove("Qt5OpenGL.dll")
	remove("Qt5Positioning.dll")
	remove("Qt5PrintSupport.dll")
	remove("Qt5Qml.dll")
	remove("Qt5Quick.dll")
	remove("Qt5QuickParticles.dll")
	remove("Qt5QuickTest.dll")
	remove("Qt5QuickWidgets.dll")
	remove("Qt5Sensors.dll")
	remove("Qt5SerialPort.dll")
	remove("Qt5Sql.dll")
	remove("Qt5Svg.dll")
	remove("Qt5Test.dll")
	remove("Qt5WebChannel.dll")
	remove("Qt5WebKit.dll")
	remove("Qt5WebKitWidgets.dll")
	remove("Qt5Widgets.dll")
	chdir(cDir)

func OSDeleteFolder cFolder 
	if isWindows() 
		systemSilent("rd /s /q " + cFolder)
	else
		systemSilent("rm -r " + cFolder)
	ok

func SystemSilent cCmd
	if isWindows()
		system(cCmd + " >nul 2>nul")
	else 
		system(cCmd + " > /dev/null")
	ok
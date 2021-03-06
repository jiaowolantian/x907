#
# Makefile for x907
#

# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_x907.zip

#
local-miui-modified-apps := Phone MiuiGallery Settings MiuiHome ThemeManager DeskClock

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider MediaProvider Stk OppoBluetooth OppoCamera OppoTouchAndroid

# All apks from MIUI
local-miui-removed-apps := SettingsProvider MediaProvider Stk Bluetooth

# All apps need to be removed from original ZIP file
local-phone-apps := SettingsProvider ApplicationsProvider MediaProvider DefaultContainerService CertInstaller DrmProvider \
		SharedStorageBackup OppoCamera UserDictionaryProvider Stk Wiper Provision LiveWallpapersPicker \
		BackupRestoreConfirmation LiveWallpapers WAPPushManager VpnDialogs OppoTouchAndroid OppoBluetooth \
		OppoMusic

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

# Apktool for finder
override APKTOOL := other/tools/apktool

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo replace bootanimation
	cp other/bootanimation out/ZIP/system/bin/bootanimation

	@echo customize build.prop
	cp other/build.prop out/ZIP/system/build.prop

	@echo remove useless files
	rm -rf out/ZIP/system/media/poweroff.mp3
	rm -rf out/ZIP/system/media/poweron.mp3
	rm -rf out/ZIP/system/media/rbootanimation.zip

	@echo add StockSettings.apk
	cp other/StockSettings.apk out/ZIP/system/app/StockSettings.apk

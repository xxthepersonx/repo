ARCHS = armv7 arm64 arm64e
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DontChangeTheVolume

DontChangeTheVolume_FILES = XXXRootListController.m
DontChangeTheVolume_INSTALL_PATH = /Library/PreferenceBundles
DontChangeTheVolume_FRAMEWORKS = UIKit
DontChangeTheVolume_PRIVATE_FRAMEWORKS = Preferences
DontChangeTheVolume_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DontChangeTheVolume.plist$(ECHO_END)

ARCHS = arm64 arm64e
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = VolButtonBrightness

VolButtonBrightness_FILES = XXXRootListController.m
VolButtonBrightness_INSTALL_PATH = /Library/PreferenceBundles
VolButtonBrightness_FRAMEWORKS = UIKit
VolButtonBrightness_PRIVATE_FRAMEWORKS = Preferences
VolButtonBrightness_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/VolButtonBrightness.plist$(ECHO_END)

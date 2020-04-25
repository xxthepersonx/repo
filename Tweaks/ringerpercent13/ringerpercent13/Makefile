include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = RingerPercent13

ARCHS = arm64 arm64e

RingerPercent13_FILES = XXXRootListController.m
RingerPercent13_INSTALL_PATH = /Library/PreferenceBundles
RingerPercent13_FRAMEWORKS = UIKit
RingerPercent13_LDFLAGS += -lCSColorPicker
RingerPercent13_PRIVATE_FRAMEWORKS = Preferences
RingerPercent13_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/RingerPercent13.plist$(ECHO_END)

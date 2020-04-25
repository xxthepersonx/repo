include $(THEOS)/makefiles/common.mk

ARCHS = arm64 arm64e

BUNDLE_NAME = SBWelcomesYou

SBWelcomesYou_FILES = XXXRootListController.m
SBWelcomesYou_INSTALL_PATH = /Library/PreferenceBundles
SBWelcomesYou_FRAMEWORKS = UIKit
SBWelcomesYou_PRIVATE_FRAMEWORKS = Preferences
SBWelcomesYou_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SBWelcomesYou.plist$(ECHO_END)

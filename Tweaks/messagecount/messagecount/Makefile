ARCHS = arm64 arm64e
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = MessageCount
MessageCount_FILES = XXXRootListController.m
MessageCount_INSTALL_PATH = /Library/PreferenceBundles
MessageCount_FRAMEWORKS = UIKit
MessageCount_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/MessageCount.plist$(ECHO_END)

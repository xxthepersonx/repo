ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CorrectSomewhereElse

CorrectSomewhereElse_FILES = XXXRootListController.m
CorrectSomewhereElse_INSTALL_PATH = /Library/PreferenceBundles
CorrectSomewhereElse_FRAMEWORKS = UIKit
CorrectSomewhereElse_PRIVATE_FRAMEWORKS = Preferences
CorrectSomewhereElse_CFLAGS = -fobjc-arc
CorrectSomewhereElse_LIBRARIES = sparkapplist

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CorrectSomewhereElse.plist$(ECHO_END)

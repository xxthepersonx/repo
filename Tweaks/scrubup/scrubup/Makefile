ARCHS = armv7 arm64 arm64e
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ScrubUp
ScrubUp_FILES = XXXRootListController.m
ScrubUp_INSTALL_PATH = /Library/PreferenceBundles
ScrubUp_FRAMEWORKS = UIKit
ScrubUp_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/scrubupprefs.plist$(ECHO_END)

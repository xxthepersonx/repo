ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SafariNoSwipeBacks
SafariNoSwipeBacks_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	#Filter plist
	$(ECHO_NOTHING)if [ -f Filter.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/; cp Filter.plist $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/SafariNoSwipeBacks.plist; fi$(ECHO_END)
	#PreferenceLoader plist
	$(ECHO_NOTHING)if [ -f Preferences.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SafariNoSwipeBacks; cp Preferences.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SafariNoSwipeBacks/; fi$(ECHO_END)

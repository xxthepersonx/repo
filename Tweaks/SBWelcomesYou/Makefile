ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SBWelcomesYou

SBWelcomesYou_FILES = Tweak.xm
SBWelcomesYou_FRAMEWORKS = UIKit Foundation AVFoundation AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += sbwelcomesyou
include $(THEOS_MAKE_PATH)/aggregate.mk

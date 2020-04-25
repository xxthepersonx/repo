ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VolButtonBrightness

VolButtonBrightness_FILES = Tweak.xm
VolButtonBrightness_CFLAGS = -fobjc-arc
VolButtonBrightness_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += volbuttonbrightness
include $(THEOS_MAKE_PATH)/aggregate.mk

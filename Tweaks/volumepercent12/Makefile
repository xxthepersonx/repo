FINALPACKAGE=1
ARCHS = armv7 arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VolumePercent12

VolumePercent12_FILES = Tweak.xm
VolumePercent12_CFLAGS = -fobjc-arc
VolumePercent12_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

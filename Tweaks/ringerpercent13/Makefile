THEOS_DEVICE_IP = 192.168.0.6
THEOS_DEVICE_PORT = 22

ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RingerPercent13

RingerPercent13_FILES = Tweak.x
RingerPercent13_CFLAGS = -fobjc-arc
RingerPercent13_LDFLAGS += -lCSColorPicker
RingerPercent13_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += ringerpercent13
include $(THEOS_MAKE_PATH)/aggregate.mk

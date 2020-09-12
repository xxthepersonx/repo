THEOS_DEVICE_IP = 192.168.0.4
THEOS_DEVICE_PORT = 22
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CorrectSomewhereElse

CorrectSomewhereElse_FILES = Tweak.x
CorrectSomewhereElse_CFLAGS = -fobjc-arc
CorrectSomewhereElse_LIBRARIES = sparkapplist

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += correctsomewhereelse
include $(THEOS_MAKE_PATH)/aggregate.mk

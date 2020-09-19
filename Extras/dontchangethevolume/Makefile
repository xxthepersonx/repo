THEOS_DEVICE_IP = 192.168.0.4
THEOS_DEVICE_PORT = 22
ARCHS = armv7 arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DontChangeTheVolume

DontChangeTheVolume_FILES = Tweak.x
DontChangeTheVolume_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += dontchangethevolume
include $(THEOS_MAKE_PATH)/aggregate.mk

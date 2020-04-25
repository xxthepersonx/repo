ARCHS = arm64 arm64e
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MessageCount

MessageCount_FILES = Tweak.xm
MessageCount_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += messagecount
include $(THEOS_MAKE_PATH)/aggregate.mk

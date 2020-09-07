TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include /var/theos/makefiles/common.mk

TWEAK_NAME = MovePageDots

MovePageDots_FILES = Tweak.x
MovePageDots_CFLAGS = -fobjc-arc

include /var/theos/makefiles/tweak.mk
SUBPROJECTS += movepagedots
include $(THEOS_MAKE_PATH)/aggregate.mk

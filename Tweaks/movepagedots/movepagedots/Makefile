TARGET := iphone:clang:latest:7.0

include /var/theos/makefiles/common.mk

BUNDLE_NAME = MovePageDots

MovePageDots_FILES = XXXRootListController.m
MovePageDots_FRAMEWORKS = UIKit
MovePageDots_PRIVATE_FRAMEWORKS = Preferences
MovePageDots_INSTALL_PATH = /Library/PreferenceBundles
MovePageDots_CFLAGS = -fobjc-arc

include /var/theos/makefiles/bundle.mk

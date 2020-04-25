ARCHS = armv7 arm64 arm64e
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = scrubup
scrubup_FILES = Tweak.xm
scrubup_FRAMEWORKS = UIKit

include $(THEOS)/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

SUBPROJECTS += scrubup
include $(THEOS)/makefiles/aggregate.mk

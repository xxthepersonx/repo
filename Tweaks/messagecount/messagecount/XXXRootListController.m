#include "XXXRootListController.h"


@implementation XXXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)resetReceivedMessages {
NSUserDefaults *iMessagePrefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.MobileSMS"];

[iMessagePrefs setObject:@"0" forKey:@"NumberOfReceivedMessages"];
[iMessagePrefs synchronize];


}

-(void)resetSentMessages {
NSUserDefaults *iMessagePrefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.MobileSMS"];

[iMessagePrefs setObject:@"0" forKey:@"NumberOfSentMessages"];
[iMessagePrefs synchronize];


}

@end

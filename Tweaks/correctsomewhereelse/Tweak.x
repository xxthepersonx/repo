#import <SparkAppList.h>

%hook UIKeyboardAutocorrectionController

-(id)init {
	
	[[NSNotificationCenter defaultCenter] addObserver:self
        selector:@selector(receiveNotification:) 
        name:@"com.person.correctsomewhereelse.sparkapplistupdate"
        object:nil];

        return %orig;
}

-(void)setNeedsAutocorrection:(BOOL)arg1 {
		
		NSString* bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];

		if([SparkAppList doesIdentifier:@"com.person.correctsomewhereelse" andKey:@"enabledApps" containBundleIdentifier:bundleIdentifier]) {

    		%orig(FALSE);

		} else {

			%orig(arg1);

		}


}

%end
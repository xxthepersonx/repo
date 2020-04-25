@interface SBBrightnessController
+(id)sharedBrightnessController;
-(void)setBrightnessLevel:(float)arg1;
-(void)_setBrightnessLevel:(float)arg1 showHUD:(BOOL)arg2 ;
@end

float brightnessStep;
float brightnessLevel1;
float newBrightness;

BOOL enableHUD = NO;

%group hooks

%hook VolumeControl

- (void)increaseVolume {

brightnessLevel1 = [UIScreen mainScreen].brightness;

if (brightnessLevel1 >= 1-brightnessStep) { 
newBrightness = 1;
} else {
newBrightness = brightnessLevel1 + brightnessStep;
}

[[%c(SBBrightnessController) sharedBrightnessController] _setBrightnessLevel:newBrightness showHUD:enableHUD];
	
}

- (void)decreaseVolume {

brightnessLevel1 = [UIScreen mainScreen].brightness;

if (brightnessLevel1 <= 0+ brightnessStep) { 
newBrightness = 0;
} else {
newBrightness = brightnessLevel1 -brightnessStep;
}

[[%c(SBBrightnessController) sharedBrightnessController] _setBrightnessLevel:newBrightness showHUD:enableHUD];

}

%end

%end

%ctor {

NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.person.volbuttonbrightness"];

if ([prefs boolForKey:@"enabled"]) {
brightnessStep = [[prefs objectForKey:@"brightnessStep"] floatValue]/100;
if ([prefs boolForKey:@"enableHUD"]) {
enableHUD = YES;
%init(hooks);
}
}
}

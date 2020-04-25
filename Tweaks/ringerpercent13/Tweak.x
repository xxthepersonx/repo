
#include <CSColorPicker/CSColorPicker.h>

@interface SBRingerPillView : UIView
@property (nonatomic,retain) UILabel * ringerPercentLabel;
@end

bool tweakEnabled;
float volumePercent;

UIColor *fontColor;

%group hooks
%hook SBRingerPillView

%property (nonatomic,retain) UILabel * ringerPercentLabel;

-(void)setSliderValue:(float)arg1 {
	
	%orig;

	if (!self.ringerPercentLabel) {

	volumePercent = arg1*100;

	if (volumePercent <= 6){
		volumePercent = 6;
	} else if(volumePercent >= 100) {
		volumePercent = 100;
	}

	float coordX = ((self.frame.size.width)/4)*3;
	float coordY = (self.frame.size.height)/2;

	UILabel *percentLabel = [[UILabel alloc]initWithFrame:CGRectMake(coordX, coordY, 40, 10)];

	[self.ringerPercentLabel setText:[NSString stringWithFormat:@"%.0f%%", volumePercent]];
	percentLabel.textColor = fontColor;
	percentLabel.textAlignment = NSTextAlignmentCenter;
	percentLabel.font = [UIFont fontWithName:@"Trebuchet MS" size:14.0f];


	[self addSubview:percentLabel];
	self.ringerPercentLabel = percentLabel;

	} else if (self.ringerPercentLabel) {

	volumePercent = arg1*100;

	if (volumePercent <= 6){
		volumePercent = 6;
	} else if(volumePercent >= 100) {
		volumePercent = 100;
	}

	[self.ringerPercentLabel setText:[NSString stringWithFormat:@"%.0f%%", volumePercent]];

	}



}

%end
%end

%ctor {

	NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.person.ringerpercent13"];

	tweakEnabled = [prefs boolForKey:@"enabled"];

	if (tweakEnabled) {

		fontColor = [UIColor cscp_colorFromHexString:[prefs objectForKey:@"textColor"]];
		%init(hooks);

	}

}
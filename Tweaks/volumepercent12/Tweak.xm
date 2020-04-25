@interface SBVolumeHUDView : UIView
@property (nonatomic, retain) UILabel *percentLabel;
@property (nonatomic, assign, readwrite) int *mode;
-(void)setProgress:(float)arg1;
@end

float width;
float height;

%hook SBVolumeHUDView
%property (nonatomic, retain) UILabel *percentLabel;

-(void)setProgress:(float)arg1 {

%orig;

if(!self.percentLabel){

// 0 - HUDView is for media volume
// 1 - HUDView is for ringer 
int mode = MSHookIvar<int >(self, "_mode");

width = (self.frame.size.width)/2; 

if (mode == 1) {

//put percent in the center of view
height = (self.frame.size.height)/2;

 } else if (mode == 0){

//put percent 3/4 of the way down view
height = ((self.frame.size.height)/4)*3;

}

UILabel * percentLabel = [[UILabel alloc] initWithFrame:CGRectMake(width, height, 50, 20)];

    float currentVolume = arg1;
    currentVolume = currentVolume*100;
    NSString *percentstr = [NSString stringWithFormat:@"%.0f%%", currentVolume];

[percentLabel setText:percentstr];
[percentLabel setCenter:CGPointMake(width, height)];
[percentLabel setTextColor:[UIColor blackColor]];
[percentLabel setBackgroundColor:[UIColor clearColor]];
[percentLabel setFont:[UIFont fontWithName: @"Trebuchet MS" size: 14.0f]];

[percentLabel setTextAlignment:NSTextAlignmentCenter];

[self addSubview:percentLabel];


self.percentLabel = percentLabel;

} else {

    float currentVolume = arg1;
    currentVolume = currentVolume*100;
    NSString *percentstr = [NSString stringWithFormat:@"%.0f%%", currentVolume];

[self.percentLabel setText:percentstr];

}
}

%end
float sliderSize;

%group hooks

%hook MediaControlsTimeControl

-(UIView *)knobView {

UIView *theView = %orig;

theView.frame = CGRectMake((theView.frame.origin.x-(sliderSize-theView.frame.size.width))+((sliderSize/2)-(theView.frame.size.width/2)), (theView.frame.origin.y-(sliderSize-theView.frame.size.height))+((sliderSize/2)-(theView.frame.size.height/2)), sliderSize, sliderSize);


theView.layer.cornerRadius = sliderSize/2;

return theView;

}

%end
%end

%ctor {

    NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.person.scrubupprefs"];

    if ([prefs boolForKey:@"enabled"]) {
    
    sliderSize = [[prefs objectForKey:@"kSize"] floatValue];
    
    %init(hooks);
    
    }

}

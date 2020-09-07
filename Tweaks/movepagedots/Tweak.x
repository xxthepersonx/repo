@interface SBIconListPageControl : UIView
@end

float xOffset;
float yOffset;

%group hooks
%hook SBIconListPageControl

-(void)layoutSubviews {

%orig;

for(UIView *pageDots in [self subviews]) {
  if([pageDots isKindOfClass:[NSClassFromString(@"_UILegibilityView") class]]) {

[pageDots setFrame:CGRectMake(pageDots.frame.origin.x+xOffset, pageDots.frame.origin.y+yOffset, pageDots.frame.size.width, pageDots.frame.size.height)];

 }

}

}

%end
%end


%ctor {

    NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.person.movepagedots"];

    if ([prefs boolForKey:@"enabled"]) {
    
    xOffset = [[prefs objectForKey:@"xOffset"] floatValue];

    yOffset = [[prefs objectForKey:@"yOffset"] floatValue];
    
    %init(hooks);
    
    }

}
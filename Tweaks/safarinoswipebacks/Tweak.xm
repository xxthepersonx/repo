%group Hook
%hook _UIScreenEdgePanRecognizerEdgeSettings

-(void)setEdgeRegionSize:(double)arg1 {

%orig(0);

}

-(double)edgeRegionSize {

return 0;

}


%end
%end

%ctor {
NSString *bundleID = NSBundle.mainBundle.bundleIdentifier;
if ([bundleID isEqualToString:@"com.apple.mobilesafari"]) {
%init(Hook);
}
}

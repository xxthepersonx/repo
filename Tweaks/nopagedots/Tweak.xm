%hook SBIconListPageControl

-(void) setHidden:(bool)hidden{

hidden = TRUE;

%orig(hidden);

}
%end
%group hooks

%hook SBVolumeControl

- (void)increaseVolume {
}

- (void)decreaseVolume {
}

%end
%end

%ctor {

NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.person.dcv"];

if ([prefs boolForKey:@"enabled"]) {
%init(hooks);
}
}


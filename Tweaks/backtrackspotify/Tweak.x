%hook SPTNowPlayingPlaybackController

- (BOOL)previousButtonWouldSeekNotSkip{
return false;
}

%end
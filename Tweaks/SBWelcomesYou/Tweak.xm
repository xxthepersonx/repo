#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioServices.h>

NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.person.sbwy"];

NSBundle *soundsFolder = [NSBundle bundleWithPath:@"/var/mobile/SBWelcomesYou/"];

NSString * soundNameRaw = [prefs objectForKey:@"soundFromList"];

NSString * soundName = [[soundNameRaw lastPathComponent] stringByDeletingPathExtension];
NSString * soundExtension = [soundNameRaw pathExtension];

int feedbackValue = [[prefs objectForKey:@"feedbackValue"] intValue];

AVAudioPlayer *soundPlayer;

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application{

//if sound doesn't play early
if (![prefs boolForKey:@"playEarly"]){

%orig;

}

//if sound is enabled
if ([prefs boolForKey:@"soundEnabled"]) {

soundPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[soundsFolder URLForResource:soundName withExtension: soundExtension] error:nil];

soundPlayer.numberOfLoops = 0;
soundPlayer.volume = 1;
[soundPlayer play];

}

//if feedback is enabled
if ([prefs boolForKey:@"vibrateEnabled"]) {

AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);

}

// if sound plays early
if ([prefs boolForKey:@"playEarly"]){

%orig;

}

}
%end
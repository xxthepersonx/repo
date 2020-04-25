#include "XXXRootListController.h"
#include <spawn.h>
extern char **environ;

@implementation XXXRootListController


-(NSArray *)soundFiles {

NSString *bundleRoot = [[NSBundle bundleWithPath:@"/var/mobile/SBWelcomesYou/"] bundlePath];
NSFileManager *fm = [NSFileManager defaultManager];
NSArray *allFiles = [fm contentsOfDirectoryAtPath:bundleRoot error:nil];

    return allFiles;
}


- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)respring {

pid_t pid;
char *argv[] = {
    "/usr/bin/killall",
    "-9",
    "backboardd",
    NULL
};

posix_spawn(&pid, argv[0], NULL, NULL, argv, environ);
waitpid(pid, NULL, 0);


      }


-(NSArray *)soundTitles {

    return [self soundFiles];
}

-(NSArray *)soundValues {

   return [self soundFiles];
}

@end

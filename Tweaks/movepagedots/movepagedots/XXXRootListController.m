#include "XXXRootListController.h"
#include <spawn.h>
extern char **environ;

@implementation XXXRootListController

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

@end

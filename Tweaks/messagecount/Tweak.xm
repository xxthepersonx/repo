@interface CKMessageEntryContentView
- (void)setPlaceholderText:(NSString *)arg1;
@end

NSString * plistSentValue;
NSString * plistReceivedValue;

int messagesSent;
int messagesReceived;

%group hooks
%hook SMSApplication

- (void)_messageSent:(id)arg1 {

%orig;

messagesSent ++;

[[NSUserDefaults standardUserDefaults] setObject:[@(messagesSent) stringValue] forKey:@"NumberOfSentMessages"];
[[NSUserDefaults standardUserDefaults] synchronize];

}

- (void)_messageReceived:(id)arg1 {

%orig;

messagesReceived ++;

[[NSUserDefaults standardUserDefaults] setObject:[@(messagesReceived) stringValue] forKey:@"NumberOfReceivedMessages"];
[[NSUserDefaults standardUserDefaults] synchronize];
}

%end

%hook CKMessageEntryContentView

- (void)setPlaceholderText:(NSString *)arg1 {

NSString * newText = [NSString stringWithFormat:@"Sent - %d Rec. - %d", messagesSent, messagesReceived];

%orig(newText);

}
%end
%end

%ctor {
if ([[NSUserDefaults standardUserDefaults] boolForKey:@"MessageCountEnabled"]){

plistSentValue = [[NSUserDefaults standardUserDefaults]
    stringForKey:@"NumberOfSentMessages"];

plistReceivedValue = [[NSUserDefaults standardUserDefaults]
    stringForKey:@"NumberOfReceivedMessages"];

messagesSent = [plistSentValue intValue];

messagesReceived = [plistReceivedValue intValue];

%init (hooks);
}

}

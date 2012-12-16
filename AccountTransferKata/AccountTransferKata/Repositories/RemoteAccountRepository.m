#import "IRemoteAccountRepository.h"
#import "RemoteAccountRepository.h"


@implementation RemoteAccountRepository {

}
- (void)withDrawAmount:(NSNumber *)amount {
    NSLog(@"%@ withDrawAmount called with amount %@", [[self class] description], amount);
}


@end
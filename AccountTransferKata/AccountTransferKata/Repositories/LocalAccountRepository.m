#import "LocalAccountRepository.h"


@implementation LocalAccountRepository {

}
- (void)depositAmount:(NSNumber *)amount {
    NSLog(@"%@ depositAmount called with amount %@", [[self class] description], amount);
}


@end
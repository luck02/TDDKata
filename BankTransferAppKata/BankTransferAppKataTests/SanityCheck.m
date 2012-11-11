
#import "SanityCheck.h"
#import "OCMockObject.h"
#import "ISanityCheckRepo.h"

@implementation SanityCheck

- (void) testSanityCheck {
    id sanityCheckRepo = [OCMockObject mockForProtocol:@protocol(ISanityCheckRepo)];

    [sanityCheckRepo verify];
    [NSAssert(false, @"")];

}
@end

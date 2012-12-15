#import "SanityCheckTest.h"
#import "OCMockObject.h"
#import "ISanityCheck.h"

@implementation SanityCheckTest

-(void) testSanityCheckOCUnit {
    STAssertTrue(true, @"OCunit is not configured correctly");
}

-(void) testSanityCheckOCMock {
    id sanityCheck = [OCMockObject mockForProtocol:@protocol(ISanityCheck)];

    [sanityCheck verify];
}

@end

#import "ServiceLocatorTests.h"
#import "PresenterTypeEnum.h"
#import "ServiceLocator.h"
#import "AccountTransferPresenter.h"

@implementation ServiceLocatorTests
-(void) testGivenSUTWhenResolveMethodIsPassedEnumerationThanMatchingTypeIsInstantiatedAndReturned {
    PresenterTypeEnum presenterTypeEnum = AccountTransfer;
    id accountTransferPresenter = [ServiceLocator resolve:presenterTypeEnum];

    STAssertTrue([accountTransferPresenter isKindOfClass:[AccountTransferPresenter class]], @"The expected Return type was not returned");

}
@end

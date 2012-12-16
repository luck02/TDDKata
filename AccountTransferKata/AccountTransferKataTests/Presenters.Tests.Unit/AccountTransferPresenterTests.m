#import "AccountTransferPresenterTests.h"
#import "OCMockObject.h"
#import "IAccountTransferView.h"
#import "ILocalAccountRepository.h"
#import "IRemoteAccountRepository.h"
#import "OCMockRecorder.h"
#import "AccountTransferPresenter.h"

@implementation AccountTransferPresenterTests

-(void) testGivenPresenter_WhenTransferAmountIsRequested_ThenAllDelegateMethodsAreCalled {
    // Create Mocks
    id accountTransferView = [OCMockObject mockForProtocol:@protocol(IAccountTransferView)];
    id localAccountRepository = [OCMockObject mockForProtocol:@protocol(ILocalAccountRepository)];
    id remoteAccountRepository = [OCMockObject mockForProtocol:@protocol(IRemoteAccountRepository)];
    
    // Set our Expectations
    NSNumber * amount = @150.00;

    [[[accountTransferView expect] andReturn:amount] getTransferAmount];
    [[remoteAccountRepository expect] withDrawAmount:amount];
    [[localAccountRepository expect] depositAmount:amount];
    [[accountTransferView expect] setDisplayMessage:@"$150 transferred."];

    // Instantiate Presenter with injected protocols

    AccountTransferPresenter *sut = [[AccountTransferPresenter alloc] initWithRemote:remoteAccountRepository andLocal:localAccountRepository];
    sut.accountTransferView = (id<IAccountTransferView>)accountTransferView;
    [sut transferAmount];


    // Verify The tests
    [accountTransferView verify];
    [localAccountRepository verify];
    [remoteAccountRepository verify];

}

@end

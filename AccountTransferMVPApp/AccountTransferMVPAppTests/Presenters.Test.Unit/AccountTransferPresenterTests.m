#import "AccountTransferPresenterTests.h"
#import "OCMockObject.h"
#import "IAccountTransferView.h"
#import "IRemoteAccountRepository.h"
#import "ILocalAccountRepository.h"
#import "OCMockRecorder.h"
#import "AccountTransferPresenter.h"

@implementation AccountTransferPresenterTests

@property(nonatomic, strong) id sut.accountTransferView;

- (void)testGivenSUTWhenTransferAmountRequested_ThenAllDelegatedProtocolsAreCalled {
    id accountTransferView = [OCMockObject mockForProtocol:@protocol(IAccountTransferView)];
    id remoteAccountRepository = [OCMockObject mockForProtocol:@protocol(IRemoteAccountRepository)];
    id localAccountRepository = [OCMockObject mockForProtocol:@protocol(ILocalAccountRepository)];


    // Set Expectations
    NSNumber *amount = @150.0;

    [[[accountTransferView expect] andReturn:amount] getTransferAmount];
    [[remoteAccountRepository expect] withdrawAmount:amount];
    [[localAccountRepository expect] depositAmount:amount];
    [[accountTransferView expect] setDisplayMessage:@"$150.00 Transferred"];

    // Instantiate SUT
    AccountTransferPresenter *sut = [[AccountTransferPresenter alloc] initWithRemote:remoteAccountRepository andLocal:localAccountRepository];
    sut.accountTransferView = (id<IAccountTransferView>)accountTransferView;

    [sut.transferAmount ];

    // Verify Mock
    [accountTransferView verify];
    [remoteAccountRepository verify];
    [localAccountRepository verify];


}

@end

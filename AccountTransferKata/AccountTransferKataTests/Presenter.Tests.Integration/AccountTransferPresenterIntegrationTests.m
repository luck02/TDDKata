#import "AccountTransferPresenterIntegrationTests.h"
#import "OCMockObject.h"
#import "IAccountTransferView.h"
#import "IRemoteAccountRepository.h"
#import "RemoteAccountRepository.h"


@implementation AccountTransferPresenterIntegrationTests

-(void) testNotSure {
    id accountTransferView = [OCMockObject mockForProtocol:@protocol(IAccountTransferView)];
    id<IRemoteAccountRepository> remoteAccountRepository = [[RemoteAccountRepository alloc] init];

}

@end

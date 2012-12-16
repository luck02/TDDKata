#import "AccountTransferPresenter.h"
#import "ILocalAccountRepository.h"
#import "IRemoteAccountRepository.h"


@implementation AccountTransferPresenter {

    id <IRemoteAccountRepository> _remoteAccountRepository;
    id <ILocalAccountRepository> _localAccountRepository;
}
@synthesize accountTransferView = _accountTransferView;


- (id)initWithRemote:(id <IRemoteAccountRepository>)remoteAccountRepository andLocal:(id <ILocalAccountRepository>)localAccountRepository {

    if (self = [super init]) {
        _remoteAccountRepository = remoteAccountRepository;
        _localAccountRepository = localAccountRepository;

    }   return self;


}

- (void)transferAmount {
    NSNumber *amount = [_accountTransferView getTransferAmount];
    [_remoteAccountRepository withDrawAmount:amount];
    [_localAccountRepository depositAmount:amount];
    [_accountTransferView setDisplayMessage:[NSString stringWithFormat:@"$%@ transferred.", amount]];

}
@end
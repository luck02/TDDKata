//
// Created by garylucas on 2012-11-23.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "AccountTransferPresenter.h"
#import "IAccountTransferView.h"
#import "IRemoteAccountRepository.h"
#import "ILocalAccountRepository.h"


@implementation AccountTransferPresenter {

    id <IRemoteAccountRepository> _remoteAccountRepository;
    id <ILocalAccountRepository> _localAccountRepository1;
}
@synthesize accountTransferView = _accountTransferView;
@synthesize transferAmount = _transferAmount;


- (id)initWithRemote:(id <IRemoteAccountRepository>)remoteAccountRepository andLocal:(id <ILocalAccountRepository>)localAccountRepository {
    if (self = [super init]) {
        _remoteAccountRepository = remoteAccountRepository;
        _localAccountRepository1 = localAccountRepository;
    }
    return self;

}
@end
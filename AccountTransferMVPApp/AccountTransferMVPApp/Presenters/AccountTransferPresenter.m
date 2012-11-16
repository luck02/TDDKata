//
// Created by garylucas on 2012-11-15.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "AccountTransferPresenter.h"
#import "ILocalAccountRepository.h"
#import "IRemoteAccountRepository.h"


@implementation AccountTransferPresenter {

}
@synthesize remoteAccountRepository = _remoteAccountRepository;
@synthesize localAccountRepository = _localAccountRepository;


- (id)initWithRemote:(id <IRemoteAccountRepository>)remoteAccountRepository andLocal:(id <ILocalAccountRepository>)localAccountRepository {
    if (self = [super init]) {
        self.remoteAccountRepository = remoteAccountRepository;
        self.localAccountRepository = localAccountRepository;
    }
    return self;
}
@end
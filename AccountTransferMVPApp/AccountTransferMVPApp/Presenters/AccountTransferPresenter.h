
#import <Foundation/Foundation.h>


@interface AccountTransferPresenter : NSObject


@property(nonatomic, strong) id <IRemoteAccountRepository> remoteAccountRepository;

@property(nonatomic, strong) id <ILocalAccountRepository> localAccountRepository;

- (id)initWithRemote:(id <IRemoteAccountRepository>)remoteAccountRepository andLocal:(id <ILocalAccountRepository>)localAccountRepository;
@end
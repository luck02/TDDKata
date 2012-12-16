#import <Foundation/Foundation.h>
#import "ILocalAccountRepository.h"
#import "IRemoteAccountRepository.h"
#import "IAccountTransferView.h"

@interface AccountTransferPresenter : NSObject


@property(nonatomic, strong) id <IAccountTransferView> accountTransferView;

- (id)initWithRemote:(id <IRemoteAccountRepository>)remoteAccountRepository andLocal:(id <ILocalAccountRepository>)localAccountRepository;

- (void)transferAmount;
@end
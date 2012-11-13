//
//  SanityCheck.m
//  BankTransferApp
//
//  Created by gary lucas on 11/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SanityCheck.h"
#import "OCMockObject.h"
#import "ISanityCheck.h"

@implementation SanityCheck

- (void) test_SanityCheck{
    id sanityCheckRepo = [OCMockObject mockForProtocol:@protocol(ISanityCheck)];

    [sanityCheckRepo verify];
}

- (void) test_SanityCheckWillCallHelloWorld{
    id sanityCheckRepo = [OCMockObject mockForProtocol:@protocol(ISanityCheck)];

    [[sanityCheckRepo expect] sayHelloWorld]  ;

    [sanityCheckRepo sayHelloWorld];

    [sanityCheckRepo verify];
}
@end

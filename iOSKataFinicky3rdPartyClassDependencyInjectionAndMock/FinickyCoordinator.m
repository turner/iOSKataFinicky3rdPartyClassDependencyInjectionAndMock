//
// Created by Douglass Turner on 6/5/13.
// Copyright (c) 2013 Elastic Image Software. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "FinickyCoordinator.h"
#import "IFinickyWrapper.h"
#import "FinickyThirdPartyApp.h"


@implementation FinickyCoordinator {

    id <IFinickyWrapper> _finickyWrapper;
}
- (id)initWithFinickyWrapper:(id <IFinickyWrapper>)finickyWrapper {

    self = [super init];
    if (nil != self) {

        // do stuff
        _finickyWrapper = finickyWrapper;
    }

    return self;
}

-(NSString *)doCustomAction {
//    FinickyThirdPartyApp *finickyThirdPartyApp = [[FinickyThirdPartyApp alloc] init];
//    return [finickyThirdPartyApp doSomethingProprietary];

    return [_finickyWrapper doSomethingProprietary];
}

@end
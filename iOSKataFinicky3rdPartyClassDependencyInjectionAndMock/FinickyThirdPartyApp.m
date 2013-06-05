//
// Created by Douglass Turner on 6/5/13.
// Copyright (c) 2013 Elastic Image Software. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "FinickyThirdPartyApp.h"

@implementation FinickyThirdPartyApp
- (NSString *)doSomethingProprietary {

    [NSException raise:@"I'm FINICKY about licensing on dev machines! You can't use me, dev!" format:@""];

}

@end
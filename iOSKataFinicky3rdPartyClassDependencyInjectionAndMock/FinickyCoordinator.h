//
// Created by Douglass Turner on 6/5/13.
// Copyright (c) 2013 Elastic Image Software. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@protocol IFinickyWrapper;

@interface FinickyCoordinator : NSObject
- (id)initWithFinickyWrapper:(id <IFinickyWrapper>)finickyWrapper;
- (NSString *)doCustomAction;
@end
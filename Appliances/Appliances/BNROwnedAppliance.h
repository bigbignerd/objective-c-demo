//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by wangguohui on 7/15/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly)NSSet *ownerNames;

- (instancetype) initWithProdectName:(NSString *)pn firstOwnerName:(NSString *)n;
- (void) addOwnerName:(NSString *)n;
- (void) removeOwnerName:(NSString *)n;

@end

//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by wangguohui on 7/15/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end;

@implementation BNROwnedAppliance

- (instancetype)initWithProdectName:(NSString *)pn firstOwnerName:(NSString *)n
{
    if(self == [super initWithProdectName:pn]){
        _ownerNames = [[NSMutableSet alloc] init];
        if(n){
            [_ownerNames addObject:n];
        }
    }
    return self;
}
- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}
- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}
- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}
- (instancetype) initWithProdectName:(NSString *)pn
{
    return [self initWithProdectName:pn firstOwnerName:nil];
}
@end

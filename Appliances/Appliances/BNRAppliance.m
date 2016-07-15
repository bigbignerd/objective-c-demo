//
//  BNRAppliance.m
//  Appliances
//
//  Created by wangguohui on 7/15/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance
- (instancetype)init
{
    return [self initWithProdectName:@"Unknown"];
}
- (instancetype)initWithProdectName:(NSString *)pn
{
    self = [super init];
    
    if(self){
        _prodectName = [pn copy];
        _voltage = 120;
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@:%d volts",self.prodectName,self.voltage];
}
@end

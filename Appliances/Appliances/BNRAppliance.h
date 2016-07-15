//
//  BNRAppliance.h
//  Appliances
//
//  Created by wangguohui on 7/15/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic,copy) NSString *prodectName;
@property (nonatomic) int voltage;

- (instancetype)initWithProdectName:(NSString *)pn;


@end

//
//  BNRItem.m
//  RandomItems
//
//  Created by wangguohui on 7/19/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
- (void)setItemName:(NSString *)str
{
    _itemName = str;
}
- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

@end

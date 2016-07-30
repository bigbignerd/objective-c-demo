//
//  BNRItem.h
//  RandomItems
//
//  Created by wangguohui on 7/19/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    BNRItem *_containedItem;
    BNRItem *_container;
}
//@property NSString *itemName;
//@property NSString *serialNumber;
//@property int valueInDollars;
//@property NSDate *dateCreated;

+ (instancetype)randomItem;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
- (void)setContainedItem:(BNRItem *) item;
- (BNRItem *) containedItem;

- (void)setContainer:(BNRItem *) item;
- (BNRItem *)container;

- (instancetype)initWithItemName:(NSString *)name
                   valueInDollars:(int)value
                     serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;



@end

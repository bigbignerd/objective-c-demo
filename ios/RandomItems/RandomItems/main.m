//
//  main.m
//  RandomItems
//
//  Created by wangguohui on 7/19/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *items = [[NSMutableArray alloc] init];
//        [items addObject:@"one"];
//        [items addObject:@"two"];
//        [items addObject:@"three"];
//        
//        [items insertObject:@"zero" atIndex:0];

//        for(NSString *item in items){
//            NSLog(@"%@",item);
//        }
//        BNRItem *item = [[BNRItem alloc] init];
        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
//        [item setItemName:@"Red Sofa"];
//        item.itemName = @"sofa";
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
//        [item setSerialNumber:@"A1B2C"];
//        item.serialNumber = @"a1b2c";
        
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
//        [item setValueInDollars:100];
//        item.valueInDollars = 100;
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
//                                           valueInDollars:100
//                                             serialNumber:@"A1B2C"];
//        for(int i = 0;i < 10;i++){
//            BNRItem *item = [BNRItem randomItem];
//            [items addObject:item];
//        }

        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        backpack = nil;
        calculator = nil;
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}

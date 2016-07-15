//
//  main.m
//  Appliances
//
//  Created by wangguohui on 7/15/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a = [[BNRAppliance alloc] init];
        BNROwnedAppliance *b = [[BNROwnedAppliance alloc] init];
        NSLog(@"a is %@",b);
        [a setProdectName:@"machine"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
    }
    return 0;
}

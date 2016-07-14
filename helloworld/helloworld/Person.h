//
//  Person.h
//  helloworld
//
//  Created by wangguohui on 16/5/17.
//  Copyright © 2016年 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//@property(nonatomic,strong) NSString *peopleName;

- (int)showWithA:(int) a;
- (int)showWithA:(int) a withB:(int)b;
- (NSString *)getPeopleName;
- (void)setPeopleName;

@end

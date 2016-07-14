//
//  Person.m
//  helloworld
//
//  Created by wangguohui on 16/5/17.
//  Copyright © 2016年 wangguohui. All rights reserved.
//

#import "Person.h"
#import "Header.h"

@interface Person()

@property (nonatomic) NSString *peopleName;
- (NSString *)getName;
@end
@implementation Person
- (instancetype)init
{
    self = [super init];
    return self;
}
//- (NSString *)getPeopleName{
//    return _peopleName;
//}
//-(void)setPeopleName{
//    _peopleName = @"wonguohui";
//}
- (int)showWithA:(int) a{
    return a;
}
- (int)showWithA:(int) a withB:(int)b{
    return a+b;
}
- (NSString *)getName
{
    return @"wonguohui";
}
@end

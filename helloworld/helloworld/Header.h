//
//  Header.h
//  helloworld
//
//  Created by wangguohui on 16/5/13.
//  Copyright © 2016年 wangguohui. All rights reserved.
//

#ifndef Header_h
#define Header_h


#endif /* Header_h */
@interface XYZPerson : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSNumber *yearOfBirth;
@property (nonatomic)NSMutableArray *friends;

- (void) sayHello;
- (void) saySomthing: (NSString *)word;
+ (XYZPerson *) person;

@end

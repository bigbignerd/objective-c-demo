//
//  main.m
//  VowelMovement
//
//  Created by guohui wang on 16/7/13.
//  Copyright © 2016年 guohui wang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *originalStrings = @[@"Sauerkraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        //declare the block variable
//        void (^devowelizer)(id,NSUInteger,BOOL *);
        ArrayEnumerationBlock devowelizer;
        //compose a block
        devowelizer = ^(id string,NSUInteger i,BOOL *stop){
            NSMutableString *newString = [NSMutableString stringWithString:string];
            //replace vowels to empty string
            for(NSString *s in vowels){
                NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
                if(yRange.location != NSNotFound){
                    *stop = YES;
                    return;
                }
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
                //save to new array
            }
            [devowelizedStrings addObject:newString];
        };
        //遍历数组 1.可以直接匿名调用
        [originalStrings enumerateObjectsUsingBlock: ^(id string,NSUInteger i,BOOL *stop){
             NSMutableString *newString = [NSMutableString stringWithString:string];
             //replace vowels to empty string
             for(NSString *s in vowels){
                 NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
                 if(yRange.location != NSNotFound){
                     *stop = YES;
                     return;
                 }
                 NSRange fullRange = NSMakeRange(0, [newString length]);
                 [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
                 //save to new array
             }
             [devowelizedStrings addObject:newString];
         }];
        //遍历数组 2.可以使用名称
//        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings:%@",devowelizedStrings);
    }
    return 0;
}

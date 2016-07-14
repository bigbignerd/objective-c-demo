//
//  main.m
//  Constant
//
//  Created by wangguohui on 7/11/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSMutableString *str = [[NSMutableString alloc] init];
        NSError *error = nil;
//        for(int i = 0;i<10;i++){
//            [str appendString:@"aron is cool\n"];
//        }
        //write to file
//        BOOL success = [str writeToFile:@"/Userss/wonguohui/test.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        //read from file
//        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/Userss/wonguohui/test.txt" encoding:NSASCIIStringEncoding error:&error];
//        if(str){
//            NSLog(@"str is:%@",str);
//        }else{
//            NSLog(@"filed,%@",[error localizedDescription]);
//        }
        //writing NSData object to file
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        NSData *data2 = [NSURLSession dataTaskWithRequest:request];
        if(!data){
            NSLog(@"fetch failed:%@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"The file is %lu bytes",(unsigned long)[data length]);
        //write
        BOOL written = [data writeToFile:@"/Users/wonguohui/google.png" options:0 error:&error];
        if(!written){
            NSLog(@"Written failed:%@",[error localizedDescription]);
        }else{
            NSLog(@"SUCCESSFUL!");
        }
       
        
    }
    return 0;
}

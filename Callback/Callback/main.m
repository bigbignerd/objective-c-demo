//
//  main.m
//  Callback
//
//  Created by wangguohui on 7/11/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemClockDidChangeNotification object:nil];
        
//        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205"];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

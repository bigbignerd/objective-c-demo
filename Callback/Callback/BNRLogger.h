//
//  BNRLogger.h
//  Callback
//
//  Created by wangguohui on 7/11/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void) updateLastTime:(NSTimer *)t;
- (void) zoneChange:(NSNotification *)note;

@end

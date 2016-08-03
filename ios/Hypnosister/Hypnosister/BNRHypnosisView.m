//
//  NRHypnosisView.m
//  Hypnosister
//
//  Created by wangguohui on 8/2/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    //radius
    float radius = (MIN(bounds.size.width, bounds.size.height)/2.0);
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
@end

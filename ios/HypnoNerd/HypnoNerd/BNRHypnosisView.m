//
//  NRHypnosisView.m
//  Hypnosister
//
//  Created by wangguohui on 8/2/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    //radius
//    float radius = (MIN(bounds.size.width, bounds.size.height)/2.0);
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    for(float curRadius = maxRadius;curRadius>0;curRadius -= 20){
//        [[path moveToPoint:CGPointMake(center.x + curRadius, center.y)];
        [path moveToPoint:CGPointMake(center.x + curRadius, center.y)];
        [path addArcWithCenter:center radius:curRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
   
    path.lineWidth = 10;
//    [[UIColor lightGrayColor] setStroke];
    [self.circleColor setStroke];
    [path stroke];
    //change draw image
    //UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
//    [logoImage drawInRect:rect];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}
// When a finger touches the screen
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    
    // Get 3 random numbers between 0 and 1
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    
    self.circleColor = randomColor;
}
- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end

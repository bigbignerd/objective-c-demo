//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by wangguohui on 8/19/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        //set tab bar items title
        self.tabBarItem.title = @"Hypnote";
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = i;
    }
    return self;
}

- (void)loadView
{
    //create a view
    BNRHypnosisView *backoundView = [[BNRHypnosisView alloc] init];
    //set is as  the view of the viewController
    self.view = backoundView;
}
@end

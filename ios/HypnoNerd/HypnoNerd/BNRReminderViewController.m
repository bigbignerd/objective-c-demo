//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by wangguohui on 8/19/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()

@property (nonatomic,weak) IBOutlet UIDatePicker *datePicker;

@end
@implementation BNRReminderViewController


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        UITabBarItem *tib = self.tabBarItem;
        tib.title = @"Reminder";
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tib.image = i;
    }
    return self;
}

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}
@end

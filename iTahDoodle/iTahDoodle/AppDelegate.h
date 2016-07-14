//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by wangguohui on 7/14/16.
//  Copyright © 2016 wangguohui. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *BNRDocPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;
@end


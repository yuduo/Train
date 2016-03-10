//
//  BBTableViewController.m
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "BBTableViewController.h"

@interface BBTableViewController ()

@end

@implementation BBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


+ (id)controllerWithSetting:(id)setting
{
    if([setting isKindOfClass:[NSDictionary class]])
    {
        NSString *classStr = [setting objectForKey:@"class"];
        
        if (NSClassFromString(classStr)) {
            classStr = [classStr substringToIndex:1];
            classStr = [classStr capitalizedString];
//            classStr = [classStr stringByReplacingCharactersInRange:<#(NSRange)#> withString:<#(nonnull NSString *)#>
            Class ControllerClass = NSClassFromString([NSString stringWithFormat:@"BB%@Controller",classStr]);
//            return [[ControllerClass alloc]initWithSetting:setting];
        }
    }
    return self;
}

- (id)initWithSetting:(id)setting
{
    self = [super init];
    self.action = [[BBAction alloc]init];
    NSInteger pageId = [[setting objectForKey:@"pageId"]longValue];
    [self.action initWithPageId:pageId];
    [self.action setDelegate:self];
    [self setClearsSelectionOnViewWillAppear:NO];
    [self.action update:setting];
    return self;
}
- (id)setting
{
    return self.setting;
}
- (void)setSetting:(id)setting
{
    self.setting = [NSDictionary dictionaryWithDictionary:setting];
}
- (void)setAction:(id) action
{
    self.action = action;
}

@end

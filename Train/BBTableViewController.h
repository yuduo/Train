//
//  BBTableViewController.h
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBAction.h"
@interface BBTableViewController : UITableViewController
@property(nonatomic,strong) NSIndexPath *indexPath;
@property(nonatomic,strong) NSDictionary *setting;
@property(nonatomic,strong)id clickOrigin;
@property(nonatomic,strong) BBAction *action;
@end

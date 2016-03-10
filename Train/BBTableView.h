//
//  BBTableView.h
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBRoot.h"
#import "BBAction.h"
#import <UIKit/UIKit.h>
@interface BBTableView : NSObject
@property(nonatomic,strong) id bbDataSource;
@property(nonatomic,strong) id bbDelegate;
@property(nonatomic,assign) char highPerformance;

@property(nonatomic,strong)  BBAction *action;
@property(nonatomic,strong)  NSString *refreshAction;
@property(nonatomic,strong)  UIRefreshControl *refreshControl;
@end

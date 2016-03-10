//
//  BBAction.h
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BBJavaScriptBridge.h"
@interface BBAction : NSObject
@property(nonatomic,strong) id delegate;
@property(nonatomic,strong)  BBJavaScriptBridge *bridge;
@property(nonatomic,assign) int32_t pageId;
@property(nonatomic,strong)  BBAction *parent;
@property(nonatomic,strong)  NSMutableDictionary *attrs;

@property(nonatomic,assign) int toolbarBarStyle;
@property(nonatomic,strong)  UIColor *toolbarTintColor;
@property(nonatomic,strong)  UIColor *toolbarBarTintColor;
- (id)initWithPageId:(NSInteger)param;
- (void)update:(id)param;
- (void)action:(id)param data:(id)data;
@end

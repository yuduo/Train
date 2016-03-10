//
//  BBWebViewContext.h
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BBJavaScriptContext.h"
@interface BBWebViewContext : BBJavaScriptContext
- (id)initWithReceiver:(id)context;
@property(nonatomic,assign)NSInteger instanceId;
@property(nonatomic,strong) UIWebView *context;
@end

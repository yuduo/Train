//
//  BBJavaScriptCoreContext.h
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBJavaScriptContext.h"
#import <JavaScriptCore/JavaScriptCore.h>
@interface BBJavaScriptCoreContext : BBJavaScriptContext
- (id)initWithReceiver:(id)context;
@property(nonatomic,strong) JSContext *context;
@property(nonatomic,strong) NSMutableDictionary *timers;
@property(nonatomic,assign) int32_t timerCount;
@end

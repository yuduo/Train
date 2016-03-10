//
//  BBJavaScriptCoreContext.m
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "BBJavaScriptCoreContext.h"

@implementation BBJavaScriptCoreContext
-(id)init
{
    
    return self;
}
- (id )initWithReceiver:(id)context
{
    self = [super initWithReceiver:context];
    JSContext *jscontext = [[JSContext alloc]init];
    [self setContext:jscontext];
    [self setTimerCount:0];
    [self setTimers:[NSMutableDictionary dictionary]];
    return self;
}
- (void)runTimeout:(id)param
{
    
}
- (void)runTimeoutSafe:(id)param
{
    
}
- (id)eval:(id)param
{
    if (self.context == nil) {
        self.context = [[JSContext alloc] init];
    }
    
    JSValue *jsVal = [self.context evaluateScript:param];
    return [jsVal toObject];
}
- (void)addScript:(id)script withSourceURL:(id)URL
{
    if (self.context == nil) {
        self.context = [[JSContext alloc] init];
    }
    if ([self respondsToSelector:@selector(evaluateScript:withSourceURL:)]) {
        [self.context evaluateScript:script withSourceURL:URL];
    }else
    {
        [self.context evaluateScript:script];
    }
}
- (id)context
{
    return self.context;
}
- (void)setContext:(id)param
{
    self.context = param;
}
- (id)timers
{
    return self.timers;
}
- (void)setTimers:(id)param
{
    self.timers = param;
}
- (int32_t)timerCount
{
    return self.timerCount;
}
- (void)setTimerCount:(int32_t)param
{
    self.timerCount = param;
}
@end

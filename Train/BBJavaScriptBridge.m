//
//  BBJavaScriptBridge.m
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//
#import <objc/runtime.h>
#import "BBAction.h"
#import "BBJavaScriptBridge.h"

@implementation BBJavaScriptBridge
- (void)initBaseScript
{
    NSURL *url = [NSURL URLWithString:@"BBUI.js"];
    [self addScript:@"var _BBUI=function(t){function e(t){if(t&&\"object\"==typeof t)for(var n in t)t[n]||0==t[n]?e(t[n]):t[n]=\"\"}function n(){return{root:{title:\"BBUI\",sections:[{rows:[{text:\"Ùf∞eMën\",detail:\"ÇYúg‡e’lÙf∞e\fˇ˜ãÕë∞eâ[≈àî^(u’ã’ã\",detailTextColor:\"gray\",action:function(){var t=this;s.syncResource(void 0,function(e,n){e?t.alert(e.message):s.reloadWindow()})}}]}]}}}function o(){var t=s.window;return\"function\"==typeof t&&(t=t.apply(s,arguments)),f(t).setting}function r(t){return B?void 0:(B=!0,s.env=t||{},s.getStorage&&s.getStorage(function(t,e,n){b=e||{},_=n||{}}),!0)}function i(t){c(\"method\",s,t)}function a(t){c(\"action\",v,t)}function c(t,e,n){return n=Array.isArray(n)?n:[n],n.forEach(function(n){e[n]||(e[n]=function(){var e,o=I.call(arguments,0),r=o.length;\"function\"==typeof o[r-1]?(r--,e=o.pop()):\"undefined\"==typeof o[r-1]&&(r--,o.pop()),o=0==r?void 0:1==r?o[0]:o,p(t,this,n,o,e)})}),!0}function p(e,n,o,r,i){var a={pageId:n.pageId,data:r};a[e]=o,t.send&&t.send(a,i?function(t){i.apply(n," withSourceURL:url];
    
    NSMutableArray *actions = [[self class] actions];
    NSString *str = [self stringify:actions];
    str = [NSString stringWithFormat:@"_BBUI.registerAction(%@)",str];
    [self eval:str];
}
- (NSString*)stringify:(NSMutableArray*)str
{
    return @"";
}
- (void)addScript:(NSString*)script withSourceURL:(NSURL*)url
{
    
}
- (NSString*)eval:(NSString*)str
{
    return @"";
}

- (void)callPage:(int32_t)page action:(id)action arguments:(id)arg
{
    [self.context send:[NSDictionary dictionaryWithObjectsAndKeys:
     [NSNumber numberWithLong:page],@"pageId",
     [action description],@"action",
     arg,@"args",nil]];
}

+ (id)actions
{
    u_int               count;
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    Method*    methods= class_copyMethodList([BBAction class], &count);
    for (int i = 0; i < count ; i++)
    {
        SEL name = method_getName(methods[i]);
        NSString *strName = [NSString  stringWithCString:sel_getName(name) encoding:NSUTF8StringEncoding];
        NSLog(@"%@",strName);
        if ([strName hasSuffix:@":handler:"]) {
            [array addObject:[strName substringToIndex:[strName length]-9]];//减掉9个
        }
    }
    
    return array;
    
}

+ (id)methods
{
    return nil;
}

+ (id)rows
{
    u_int               count;
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    Method*    methods= class_copyMethodList([BBAction class], &count);
    for (int i = 0; i < count ; i++)
    {
        SEL name = method_getName(methods[i]);
        NSString *strName = [NSString  stringWithCString:sel_getName(name) encoding:NSUTF8StringEncoding];
        NSLog(@"%@",strName);
        if ([strName hasSuffix:@"Row"]) {
            [array addObject:[strName substringToIndex:[strName length]-3]];//减掉9个
        }
        
        //to do
        if ([strName hasSuffix:@"BB"]) {
            
        }else
        {
            
        }
    }
    
    return array;
}

- (id)context
{
    return self.context;
}
- (void)setContext:(id) param
{
    self.context = param;
}
@end

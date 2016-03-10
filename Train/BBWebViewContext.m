//
//  BBWebViewContext.m
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "BBWebViewContext.h"
#import "BBWebViewAJAXProtocol.h"
@implementation BBWebViewContext
- (id )initWithReceiver:(id)context
{
    self = [super initWithReceiver:context];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiver:)  name:@"kWebViewContextReceiveDataNotification" object:nil];
    self.context = [[UIWebView alloc]init];
    [self initScript];
    return self;
}
+ (void)initialize
{
    [NSURLProtocol registerClass:[BBWebViewAJAXProtocol class]];
}
- (void)initScript
{
    NSString*js = [NSString stringWithFormat:@"_BBBridgeId = %ld",self.instanceId];
    [self eval:js];
}

- (id)eval:(id)param
{
    NSString *js =[NSString stringWithFormat:@"JSON.stringify(%@);",param ];
    NSString *ret=@"";
    if ([NSThread isMainThread]) {
        if (self.context) {
            ret = [self.context stringByEvaluatingJavaScriptFromString:js];
        }
    }else
    {
        [self performSelectorOnMainThread:@selector(stringByEvaluatingJavaScriptFromString:) withObject:js waitUntilDone:NO];
    }
    if ([ret length]) {
        NSData *data = [ret dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error;
        return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    }
    return nil;
}
- (void)addScript:(id)js withSourceURL:(id)URL
{
    if ([NSThread isMainThread]) {
        if (self.context) {
            [self.context stringByEvaluatingJavaScriptFromString:js];
        }
    }else
    {
        [self performSelectorOnMainThread:@selector(stringByEvaluatingJavaScriptFromString:) withObject:js waitUntilDone:NO];
    }
}
- (void)receiver:(id) param
{
    if (![param isKindOfClass:[NSDictionary class]]) {
        //
    }else
    {
        NSDictionary *dic = (NSDictionary*)param;
        NSInteger idlong = [[dic objectForKey:@"id"] longValue];
        if (self.instanceId == idlong) {
            [self handle:[dic valueForKey:@"data"] ];
        }
    }
        
}
@end

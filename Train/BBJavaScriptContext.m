//
//  BBJavaScriptContext.m
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "BBJavaScriptContext.h"
#import "JSContext.h"
#import "BBJavaScriptCoreContext.h"
#import "BBWebViewContext.h"
@implementation BBJavaScriptContext
+ (id)contextWithReceiver:(id)context
{
    if ([context isKindOfClass:[JSContext class]]) {
        return [[BBJavaScriptCoreContext alloc]initWithReceiver:context];
    }else
    {
        return [[BBWebViewContext alloc]initWithReceiver:context];
    }
}
- (id)initWithReceiver:(id)context
{
    return self;
}
- (void)initBaseScript
{
    NSURL *url = [NSURL URLWithString:@"context.js"];
    [self addScript:@"var _BBBridge=function(e){function t(e,t){var n;return\"function\"==typeof t&&(n=\"cb_\"+ ++B,f[n]=t),c({data:e,callbackId:n})}function n(e){if(e){var t=e.responseId;if(!t)return cbId=e.callbackId,_BBBridge.receiver&&_BBBridge.receiver(e.data,cbId&&function(e){c({data:e,responseId:cbId})});var n=f[t];n?(n(e.data),delete f[t]):\"function\"==typeof log&&log(\"Can't support repeat call the callback function\")}}function r(e,t){return t&&setTimeout(function(){t(e)},200),e}function i(e){try{var t=new XMLHttpRequest;t.open(\"POST\",a,!0),t.setRequestHeader(\"Content-type\",d),t.send(JSON.stringify({id:_BBBridgeId,data:e,count:++u})),t.timeout=200}catch(n){return n}}var o,c,a=\"http://bbwebviewajaxhost\",d=\"application/x-www-form-urlencoded\",u=0,f={},B=0;return\"undefined\"!=typeof _BBBridgeId?(o=\"UIWebView\",c=i,window.onerror=function(e){window.uncaughtException&&window.uncaughtException(new Error(e))}):\"undefined\"!=typeof _BBBridgeReceiver?(o=\"JavaScriptCore\",c=_BBBridgeReceiver):c=function(){},{" withSourceURL:url];
}

- (id)send:(id)data
{
    [self sendData:[NSDictionary dictionaryWithObject:data forKey:@"data"] ];
    return nil;
}

- (id)send:(id)data handler:(id)handler
{
    return nil;
}

- (id)sendData:(id)data
{
    
    if ([NSJSONSerialization isValidJSONObject:data])
    {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:&error];
        NSString *json =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        
        NSString *js = [NSString stringWithFormat:@"_BBBridge._handle(%@)",json];
        return [self eval:js];
    }
    return nil;
}
- (id)eval:(id)param
{
    return 0;
}
- (void)handle:(id)param
{
    if ([NSThread isMainThread]) {
        [self handleSafe:param];
    }else
    {
        [self performSelectorOnMainThread:@selector(handleSafe:) withObject:param waitUntilDone:NO];
    }
}

- (void)handleSafe:(id)param
{
    if (self.receiver == nil) {
        return;
    }
    if ([param isKindOfClass:[NSDictionary class]]) {
       NSString *responseId = [param objectForKey:@"responseId"];
        if (responseId) {
            self.callbacks = [param objectForKey:@"data"];
            
        }else
        {
            NSString *callbackId = [param objectForKey:@"callbackId"];
        }
    }
}
- (id)receiver
{
    return self.receiver;
}
- (void)setReceiver:(id) param
{
    self.receiver = param;
}
@end

//
//  BBJavaScriptContext.h
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BBJavaScriptContext : NSObject
@property(nonatomic,assign)int32_t uniqueId;
@property(nonatomic,strong) NSMutableDictionary *callbacks;
@property(nonatomic,strong)id receiver;
- (id)initWithReceiver:(id)context;
- (void)addScript:(id)script withSourceURL:(id)URL;
- (void)handle:(id)param;
- (id)send:(id)data;
@end

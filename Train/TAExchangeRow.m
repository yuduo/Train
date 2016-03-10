//
//  TAExchangeRow.m
//  Train
//
//  Created by hu on 16/3/10.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "TAExchangeRow.h"

@implementation TAExchangeRow
- (void)update:(id)param
{
    
}
+ (id)attributes
{
    return [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:1],@"oneLabel",
     [NSNumber numberWithInteger:1],@"exchangeImage",
     [NSNumber numberWithInteger:1],@"secondLabel",
     [NSNumber numberWithInteger:1],@"oneText",
     [NSNumber numberWithInteger:1],@"secondText",
     [NSNumber numberWithInteger:1],@"exchangeAction",
     nil];
    
    
}


@end

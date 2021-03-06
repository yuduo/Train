//
//  BBUtil.h
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BBUtil : NSObject

+ (void)onePixelImageWithColor;
+ (void)tintColor;
+ (void)setObjectProperties:(id)setobjectproperties for:(id)forsome from:(id)from;
+ (void)setStringProperties:(id)setstringproperties for:(id)forsome from:(id)from;
+ (void)setNumberProperties:(id)setnumberproperties for:(id)forsome from:(id)from;
+ (void)setColorProperties:(id)setcolorproperties for:(id)forsome from:(id)from;
+ (void)setDateProperties:(id)setdateproperties for:(id)forsome from:(id)from customFormat:(id)customformat;
+ (void)setEnumProperty:(id)setenumproperty for:(id)forsome from:(id)from list:(id)list;
+ (void)settingFromBind:(id)settingfrombind data:(id)data;
+ (void)stringifyDate:(id)stringifydate mode:(id)mode format:(id)forsomemat;
+ (void)parseDate:(id)parsedate format:(id)forsomemat;
@end

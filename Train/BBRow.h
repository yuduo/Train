//
//  BBRow.h
//  Train
//
//  Created by hu on 16/3/7.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBAttribute.h"
#import "BBSection.h"
@interface BBRow : BBAttribute
@property(nonatomic,assign)char hidden;
@property(nonatomic,assign)char enabled;
@property(nonatomic,assign)char focusable;
@property(nonatomic,assign)char selected;
@property(nonatomic,assign)char deletable;
@property(nonatomic,assign)char focused;
@property(nonatomic,assign)char hideSeparator;
@property(nonatomic,assign)char loading;
@property(nonatomic,strong) NSString *identifier;
@property(nonatomic,strong) BBSection *section;
@property(nonatomic,strong) NSString *text;
@property(nonatomic,assign)id value;
@property(nonatomic,assign)float height;
@property(nonatomic,strong) NSString *accessoryAction;
@property(nonatomic,strong) NSString *action;
@property(nonatomic,strong) NSString *valueChangedAction;
@property(nonatomic,strong) NSString *key;
@property(nonatomic,assign)id data;
@property(nonatomic,strong) NSDictionary *bind;
@property(nonatomic,assign)int style;
@property(nonatomic,strong) NSString *detail;
@property(nonatomic,assign)int accessoryType;
@property(nonatomic,assign)id accessoryView;
@property(nonatomic,strong) NSString *deletedAction;
@property(nonatomic,strong) NSString *textFont;
@property(nonatomic,assign)float textFontSize;
@property(nonatomic,strong) NSString *detailTextFont;
@property(nonatomic,assign)float detailTextFontSize;
@property(nonatomic,assign)int detailTextLine;
@property(nonatomic,strong) NSString *accessibilityLabel;
@property(nonatomic,strong) UIColor *textColor;
@property(nonatomic,strong) UIColor *detailTextColor;
@property(nonatomic,strong) UIColor *backgroundColor;
@property(nonatomic,strong) NSString *image;
@property(nonatomic,strong) NSString *imageURL;
@property(nonatomic,strong) NSString *selectedImage;
@property(nonatomic,assign)float imageCornerRadius;
@property(nonatomic,strong) NSString *imageData;
@property(nonatomic,assign)id realAccessoryView;
@end

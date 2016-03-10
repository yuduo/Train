//
//  BBRoot.h
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBAttribute.h"
#import "BBTableView.h"
#import "BBCollectionView.h"
@interface BBRoot : BBAttribute
@property(nonatomic,assign)char grouped;
@property(nonatomic,assign)char showIndexTitle;
@property(nonatomic,assign)char editing;
@property(nonatomic,strong) NSDictionary *setting;
@property(nonatomic,strong) NSDictionary *bind;
@property(nonatomic,strong) NSMutableDictionary *data;
@property(nonatomic,strong) NSMutableArray *sections;
@property(nonatomic,strong) NSDictionary *emptyRow;
@property(nonatomic,strong) NSDictionary *sectionTemplate;
@property(nonatomic,strong) NSDictionary *originalData;
- (id)initWithSetting:(id)setting;
@end

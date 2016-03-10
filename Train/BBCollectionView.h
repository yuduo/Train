//
//  BBCollectionView.h
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBRoot.h"
#import <UIKit/UIKit.h>
#import "BBAction.h"

@interface BBCollectionView : NSObject
@property(nonatomic,strong)id bbDataSource;
@property(nonatomic,strong)id bbDelegate;

@property(nonatomic,strong) BBAction *action;
@property(nonatomic,strong) NSString *refreshAction;
@property(nonatomic,strong) UIRefreshControl *refreshControl;
@property(nonatomic,strong) NSMutableDictionary *_registeredCellClass;
@property(nonatomic,assign)float height;
@property(nonatomic,assign)float width;
@property(nonatomic,assign)float widthPercent;
@property(nonatomic,assign)float heightPercent;
@property(nonatomic,assign)float spacing;
@property(nonatomic,assign)float lineSpacing;
@end

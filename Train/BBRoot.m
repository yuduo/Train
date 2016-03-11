//
//  BBRoot.m
//  Train
//
//  Created by hu on 16/3/8.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "BBRoot.h"
#import "BBUtil.h"
#import "BBSection.h"

@implementation BBRoot
- (id)initWithSetting:(id)setting
{
    [self setData:[NSMutableDictionary dictionary]];
    [self update:setting];
    return self;
}
+ (id)attributes
{
    return  [NSDictionary dictionaryWithObjectsAndKeys:
     [NSNumber numberWithInteger:2],@"grouped",
     [NSNumber numberWithInteger:2],@"editing",
     [NSNumber numberWithInteger:2],@"showIndexTitle",
     [NSNumber numberWithInteger:0],@"sectionTemplate",
     [NSNumber numberWithInteger:0],@"emptyRow",
     [NSNumber numberWithInteger:0],@"bind"
     , nil];
    
}
- (void)update:(id)setting
{
    [self setSetting:setting];
    
    
    if ([[setting objectForKey:@"sections" ] isKindOfClass:[NSArray class]]) {
        [self.sections removeAllObjects];
        
        NSArray *array = [setting objectForKey:@"sections" ];
        for (NSString* setting in array) {
//            [self addSection:[BBSection sectionWithSetting:setting]];
        }
    }
    
    if ([[setting objectForKey:@"addData" ] isKindOfClass:[NSArray class]]) {
        NSDictionary *data = [setting objectForKey:@"data" ];
        [self.data addEntriesFromDictionary:data];
        
    }else
    {
        NSDictionary *data = [setting objectForKey:@"data" ];
//        [self setOriginalData:[[NSMutableDictionary dictionaryWithDictionary:self.originalData] addEntriesFromDictionary:data]];
        //        [self setData:[[NSMutableDictionary dictionaryWithDictionary:self.originalData] addEntriesFromDictionary:data]];

        if ([[setting objectForKey:@"resources" ] isKindOfClass:[NSArray class]]) {
            NSArray *array = [setting objectForKey:@"resources" ];
            for (NSString* setting in array) {
                
            }
            
        }
        
        
    }
}

- (void)bindData:(id)param
{
    self.bind = param;
    [BBUtil settingFromBind:self.bind data:param];
}

- (void)update

{
    
}

- (void)bindData

{
    
}

- (void)toCollection

{
    
}

- (void)addSection:(id)section

{
    
}

- (void)sectionAtIndex

{
    
}

- (void)numberOfSections

{
    
}

- (void)visibleSectionAtIndex

{
    
}

- (void)visibleRowAtIndexPath

{
    
}

- (void)numberOfVisibleSections

{
    
}

- (void)indexForVisibleSection

{
    
}

- (void)firstFocusableRow

{
    
}

- (void)lastFocusableRow

{
    
}

- (void)nextSiblingFocusableRow

{
    
}

- (void)prevSiblingFocusableRow

{
    
}

- (void)focusedRow

{
    
}

- (void)values

{
    
}

- (void)grouped

{
    
}

- (void)setGrouped

{
    
}

- (void)setting

{
    
}

- (void)setSetting

{
    
}

- (void)bind

{
    
}

- (void)setBind

{
    
}

- (void)data

{
    
}

- (void)setData

{
    
}

- (void)sections

{
    
}

- (void)setSections

{
    
}

- (void)emptyRow

{
    
}

- (void)setEmptyRow

{
    
}

- (void)sectionTemplate

{
    
}

- (void)setSectionTemplate

{
    
}

- (void)showIndexTitle

{
    
}

- (void)setShowIndexTitle

{
    
}

- (void)originalData

{
    
}

- (void)setOriginalData

{
    
}

- (void)tableView

{
    
}

- (void)setTableView

{
    
}

- (void)collectionView

{
    
}

- (void)setCollectionView

{
    
}

- (void)editing

{
    
}

- (void)setEditing

{
    
}

- (void)cxx_destruct

{
    
}


@end

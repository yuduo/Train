//
//  TAOrderTrainTableViewCell.h
//  Train
//
//  Created by hu on 16/3/10.
//  Copyright © 2016年 com.12307. All rights reserved.
//

#import "BBTableViewCell.h"
#import <UIKit/UIKit.h>
@interface TAOrderTrainTableViewCell : BBTableViewCell
@property(nonatomic,strong) UIImageView *toImageView;
@property(nonatomic,strong) UILabel *departStationLabel;
@property(nonatomic,strong) UILabel *arrivalStationLabel;
@property(nonatomic,strong) UILabel *codeLabel;
@property(nonatomic,strong) UILabel *sequenceNoLabel;
@property(nonatomic,strong) UILabel *departTimeLabel;
@property(nonatomic,strong) UILabel *arrivalTimeLabel;
@property(nonatomic,strong) UILabel *departDateLabel;
@end

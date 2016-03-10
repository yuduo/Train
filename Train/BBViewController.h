#import <Foundation/Foundation.h>
#import "BBAction.h"
@interface BBViewController : NSObject
@property(nonatomic,strong)  NSDictionary *setting;
@property(nonatomic,strong) id clickOrigin;
@property(nonatomic,strong)  BBAction *action;
@end
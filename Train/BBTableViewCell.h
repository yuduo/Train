#import <Foundation/Foundation.h>
#import "BBTableView.h"
#import <UIKit/UIKit.h>
@interface BBTableViewCell : UITableViewCell
@property(nonatomic,assign)char loading;
@property(nonatomic,assign)char hideSeparator;
@property(nonatomic,assign)int style;
@property(nonatomic,strong) BBTableView *tableView;
@end
#import <Foundation/Foundation.h>
#import "BBAttribute.h"
#import <UIKit/UIKit.h>
#import "BBRoot.h"
@interface BBSection : BBAttribute
+ (id)sectionWithSetting:(id)setting;
@property(nonatomic,assign)char hidden;
@property(nonatomic,assign)char selectable;
@property(nonatomic,assign)char multiple;
@property(nonatomic,assign)char sortable;
@property(nonatomic,assign)char loading;
@property(nonatomic,strong) NSString *header;
@property(nonatomic,strong) NSDictionary *bind;
@property(nonatomic,strong) NSString *key;
@property(nonatomic,strong)id value;
@property(nonatomic,strong) NSString *footer;
@property(nonatomic,strong) NSMutableArray *rows;
@property(nonatomic,strong) BBRoot *root;
@property(nonatomic,strong) NSDictionary *rowTemplate;
@property(nonatomic,strong) NSDictionary *itemTemplate;
@property(nonatomic,strong) NSDictionary *emptyRow;
@property(nonatomic,assign)float headerHeight;
@property(nonatomic,assign)float footerHeight;
@property(nonatomic,strong) NSString *indexTitle;
@property(nonatomic,strong) UIColor *headerBackgroundColor;
@property(nonatomic,strong) UIColor *footerBackgroundColor;
@end
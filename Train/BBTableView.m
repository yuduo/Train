#import "define.h"

#import "BBTableView.h"
#import "BBRoot.h"
#import "BBTableViewDataSource.h"
#import "BBUtil.h"
@interface BBTableView()
@property(nonatomic,assign)  BBRoot *root;
@end

@implementation BBTableView

- (id)initWithSetting:(id)setting

{
//    self.root = [[BBRoot alloc]initWithSetting:setting];
    self.root.grouped;
    
//    [self setDataSource:[[BBTableViewDataSource alloc]init]];
    [self update:setting init:YES];
    return self;
}

- (void)update:(id)setting init:(BOOL)init

{
    if (!init) {
//        [self.root update:setting];
    }
    
    [BBUtil setStringProperties:[NSArray arrayWithObject:@"refreshAction"] for:self from:setting];
    NSString *numberStrings[2];
    NSString *colorStrings[2];
    numberStrings[0]=@"rowHeight";
    numberStrings[1]=@"highPerformance";
    [BBUtil setNumberProperties:[NSArray arrayWithObjects:numberStrings count:2] for:self from:setting];
    colorStrings[0]=@"separatorColor";
    colorStrings[1]=@"backgroundColor";
    [BBUtil setColorProperties:[NSArray arrayWithObjects:colorStrings count:2] for:self from:setting];
    BOOL edit = [setting objectForKey:@"editing"];
    if (edit) {
        
//        [self setEditing:self.root.editinganimated:YES];
    }
    
//    if([setting objectForKey:@"bounce"]!=nil)
//    {
//        [self setAlwaysBounceVertical:[[setting objectForKey:@"bounce"]boolValue]];
//    }
//    
//    if([setting objectForKey:@"offsetTop"]!=nil)
//    {
//        [self setContentInset:[[setting objectForKey:@"offsetTop"]floatValue]];
//    }
//    
//    if([setting objectForKey:@"separatorStyle"]!=nil)
//    {
//        NSString *style = [setting objectForKey:@"separatorStyle"];
//        if ([style isEqualToString:@"none"]) {
//            [self setSeparatorStyle:0];
//        }else if ([style isEqualToString:@"noextra"])
//        {
//            [self setTableFooterView:[UIView alloc]initWithFrame:CGRectZero];
//        }else
//        {
//            [self setSeparatorStyle:1];
//        }
//    }
//    
//    if([setting objectForKey:@"refreshAction"]!=nil)
//    {
//        if([setting objectForKey:@"refreshControl"]!=nil)
//        {
//            self.refreshControl = [[UIRefreshControl alloc]init];
//            [self.refreshControl addTarget:self action:@selector(handleRefresh:) forControlEvents:0];
//            [self.view addSubview:self.refreshControl];
//            
//        }
//    }
}

- (void)update:(id)setting

{

}

- (void)scrollToTop

{

}

- (void)refresh

{

}

- (void)stopRefresh

{

}

- (void)handleRefresh

{

}


- (void)deselect

{

}

- (void)deleteRowAtIndexPath

{

}

- (void)action:(id)action data:(id)data extra:(id)extra 

{

}

- (void)focusRow

{

}

- (void)focusRowAtIndexPath

{

}

- (void)updateRow:(id)updaterow indexPath:(id)indexpath 

{

}

- (void)root

{

}

- (void)setRoot

{

}

- (void)action

{

}

- (void)setAction

{

}

- (void)refreshAction

{

}

- (void)setRefreshAction

{

}

- (void)refreshControl

{

}

- (void)setRefreshControl

{

}

- (void)highPerformance

{

}

- (void)setHighPerformance

{

}

- (void)cxx_destruct

{

}

@end
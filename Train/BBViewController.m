#import "define.h"

#import "BBViewController.h"
#import "BBAction.h"
@implementation BBViewController

- (id)initWithSetting:(id)setting

{
    self.action = [[BBAction alloc]initWithPageId:[[setting objectForKey:@"pageId"]integerValue]];
    return self;
}


- (void)viewDidLoad

{
    NSString *str = [self.setting objectForKey:@"viewDidLoad"];
    if ([str isKindOfClass:[NSString class]]) {
        [self.action action:str data:self];
    }
}

- (void)viewWillAppear

{

}

- (void)viewDidAppear

{

}

- (void)viewWillDisappear

{

}

- (void)viewDidDisappear

{

}

- (void)viewDidPresent

{

}

- (id)setting

{
    return self.setting;
}

- (void)setSetting:(id)setting

{
    self.setting = setting;
}

- (void)clickOrigin

{

}

- (void)setClickOrigin

{

}

- (id)action

{
    return self.action;
}

- (void)setAction:(id)action

{
    self.action = action;
}


@end
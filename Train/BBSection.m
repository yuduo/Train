#import "define.h"

#import "BBSection.h"

@implementation BBSection

- (void)initWithSetting

{

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

- (void)addRow

{

}

- (void)insertRow:(id)insertrow atIndex:(id)atindex 

{

}

- (void)indexOfRow

{

}

- (void)visibleRowAtIndex

{

}

- (void)numberOfVisibleRows

{

}

- (void)indexForVisibleRow

{

}

- (void)moveVisibleRowFromIndex:(id)movevisiblerowfromindex toIndex:(id)toindex 

{

}

- (void)value

{

}

- (void)headerForTableView

{

}

- (void)footerForTableView

{

}

- (void)headerHeightForTableView

{

}

- (void)footerHeightForTableView

{

}

- (void)willDisplayHeaderView:(id)willdisplayheaderview forTableView:(id)fortableview 

{

}

- (void)willDisplayFooterView:(id)willdisplayfooterview forTableView:(id)fortableview 

{

}

- (void)didEndDisplayingHeaderView:(id)didenddisplayingheaderview forTableView:(id)fortableview 

{

}

- (void)hidden

{

}

- (void)setHidden

{

}

- (void)header

{

}

- (void)setHeader

{

}

- (void)bind

{

}

- (void)setBind

{

}

- (void)key

{

}

- (void)setKey

{

}

- (void)setValue

{

}

- (void)footer

{

}

- (void)setFooter

{

}

- (void)rows

{

}

- (void)setRows

{

}

- (void)root

{

}

- (void)setRoot

{

}

- (void)rowTemplate

{

}

- (void)setRowTemplate

{

}

- (void)itemTemplate

{

}

- (void)setItemTemplate

{

}

- (void)emptyRow

{

}

- (void)setEmptyRow

{

}

- (void)headerHeight

{

}

- (void)setHeaderHeight

{

}

- (void)footerHeight

{

}

- (void)setFooterHeight

{

}

- (void)indexTitle

{

}

- (void)setIndexTitle

{

}

- (void)headerBackgroundColor

{

}

- (void)setHeaderBackgroundColor

{

}

- (void)footerBackgroundColor

{

}

- (void)setFooterBackgroundColor

{

}

- (void)selectable

{

}

- (void)setSelectable

{

}

- (void)multiple

{

}

- (void)setMultiple

{

}

- (void)sortable

{

}

- (void)setSortable

{

}

- (void)loading

{

}

- (void)setLoading

{

}

- (void)cxx_destruct

{

}

+ (id)sectionWithSetting:(id)setting

{
    if ([setting isKindOfClass:[NSDictionary class]]) {
        if ([[setting objectForKey:@"type"] isKindOfClass:[NSString class]]) {
            Class type = NSClassFromString([setting objectForKey:@"type"]);
            if (!type) {
                //
                NSString *typeStr = [setting objectForKey:@"type"];
                if (typeStr.length) {
                    
                    typeStr = [typeStr stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[typeStr substringToIndex:1]capitalizedString]];
                    
                    Class type = NSClassFromString([NSString stringWithFormat:@"BB%@Section",typeStr ]);
                }
            }
            
            return [[type alloc ]initWithSetting:setting];
            
        }
    }
    return self;
}

+ (void)attributes

{

}

@end
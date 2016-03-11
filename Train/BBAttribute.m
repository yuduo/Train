#import "define.h"

#import "BBAttribute.h"

@implementation BBAttribute

- (void)update

{

}

- (void)formatter

{

}

- (void)setFormatter

{

}



+ (void)initialize

{
//    if(self.setting==nil)
//    {
//        self.setting = [NSDictionary dictionary];
//    }
//    
//    if([self.setting objectForKey: NSStringFromClass(self)])
//    {
//        [self.setting setObject:[[self.setting objectForKey: NSStringFromClass(self)] addEntriesFromDictionary:[self attributes] forKey:NSStringFromClass(self)]];
//    }
}

+ (NSDictionary*)attributes

{
return [NSDictionary dictionary];
}

@end
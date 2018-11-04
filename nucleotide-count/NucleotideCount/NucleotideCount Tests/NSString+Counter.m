#import "NSString+Counter.h"

@implementation NSString (Counter)

-(NSDictionary<NSString *, NSNumber *> *)characterCounter {
    __block NSMutableDictionary<NSString *, NSNumber *> *counter = [[NSMutableDictionary alloc] init];
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length)
                             options:NSStringEnumerationByComposedCharacterSequences
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                              counter[substring] = [NSNumber numberWithInteger:counter[substring].integerValue + 1];
                          }];
    return counter.copy;
}

@end

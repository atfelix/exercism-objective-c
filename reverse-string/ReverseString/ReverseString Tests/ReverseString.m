#import "ReverseString.h"

@implementation NSString (ReverseString)

-(NSString *)reverseString {
    __block NSMutableString *reverseString = [[NSMutableString alloc] init];
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length)
                             options:NSStringEnumerationByComposedCharacterSequences | NSStringEnumerationReverse
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                              [reverseString appendString:substring];
                          }];
    return reverseString;
}

@end

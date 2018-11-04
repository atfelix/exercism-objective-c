#import "Isogram.h"

@implementation Isogram

+(NSCharacterSet *)lowercaseLetters {
    static NSCharacterSet *lowercaseLetters = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        lowercaseLetters = [NSMutableCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"];
    });
    return lowercaseLetters;
}

+(BOOL)isIsogram:(NSString *)input {
    input = input.lowercaseString;
    NSCharacterSet *fixedCharacterSet = self.lowercaseLetters;
    NSMutableCharacterSet *characterSet = [fixedCharacterSet mutableCopy];

    for (NSUInteger index = 0; index < input.length; index++) {
        unichar character = [input characterAtIndex:index];
        if (![fixedCharacterSet characterIsMember:character]) {
            continue;
        }
        else if (![characterSet characterIsMember:character]) {
            return NO;
        }
        [characterSet removeCharactersInString:[NSString stringWithFormat:@"%c", character]];
    }
    return YES;
}

@end

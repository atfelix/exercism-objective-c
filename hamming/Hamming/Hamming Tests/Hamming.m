#import "Hamming.h"

@implementation Hamming

+(NSUInteger)compute:(NSString *)first against:(NSString *)second {
    if (first.length != second.length) {
        [NSException raise:@"Invalid input" format:@"Input must be > 0"];
    }

    NSUInteger count = 0;
    for (NSUInteger index = 0; index < first.length; index++) {
        if ([first characterAtIndex:index] != [second characterAtIndex:index]) {
            count++;
        }
    }
    return count;
}

@end

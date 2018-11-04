#import "SumOfMultiples.h"
#import "NSArray+SumOfMultiples.h"

@implementation SumOfMultiples

+(NSNumber *)toLimit:(NSNumber *)limit inMultiples:(NSArray<NSNumber *> *)multiples {
    NSArray *filteredMultiples = [multiples filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(NSNumber *number, NSDictionary<NSString *,id> *bindings) {
        return number.unsignedIntegerValue != 0;
    }]];

    NSUInteger sum = 0;

    for (NSArray *set in filteredMultiples.powerset) {
        if (set.count == 0) {
            continue;
        }
        NSUInteger x = (limit.unsignedIntegerValue - 1) / set.lcm;
        NSUInteger consecutiveSum = set.lcm * x * (x + 1) / 2;
        sum += (set.count % 2 == 0) ? -consecutiveSum : consecutiveSum;
    }

    return [NSNumber numberWithUnsignedInteger:sum];
}

@end

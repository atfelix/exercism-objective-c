#import "NSArray+SumOfMultiples.h"

NSUInteger gcd(NSUInteger a, NSUInteger b);

@implementation NSArray (SumOfMultiples)

-(NSArray *)powerset {
    NSMutableArray *powerset = [[NSMutableArray alloc] init];
    NSMutableArray *mutableCopy = self.mutableCopy;

    if (self.count == 0) {
        [powerset addObject:@[]];
        return powerset.copy;
    }

    id lastObject = mutableCopy.lastObject;
    [mutableCopy removeLastObject];

    for (NSArray *set in mutableCopy.powerset) {
        [powerset addObject:set];
        [powerset addObject:[set arrayByAddingObject:lastObject]];
    }

    return powerset.copy;
}

-(NSUInteger)lcm {
    if (self.count == 0) {
        return 1;
    }
    __block NSUInteger lcm = [self.firstObject unsignedIntegerValue];
    [self enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(1, self.count - 1)]
                            options:0
                         usingBlock:^(NSNumber *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                             lcm *= obj.unsignedIntegerValue / gcd(lcm, obj.unsignedIntegerValue);
                         }];
    return lcm;
}

@end

NSUInteger gcd(NSUInteger a, NSUInteger b) {
    while (b) {
        NSUInteger temp = a;
        a = b;
        b = temp % a;
    }
    return a;
}

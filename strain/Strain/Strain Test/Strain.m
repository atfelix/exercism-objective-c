#import "Strain.h"

@implementation NSArray (Strain)

-(NSArray *)keep:(BOOL)keep where:(BOOL (^)(id _Nonnull))block {
    return [self discard:^BOOL(id  _Nonnull element) {
        return keep ^ block(element);
    }];
}

-(NSArray *)discard:(BOOL (^)(id _Nonnull))block {
    NSMutableArray *array = [[NSMutableArray alloc] init];

    for (id element in self) {
        if (!block(element)) {
            [array addObject:element];
        }
    }

    return array.mutableCopy;
}

@end

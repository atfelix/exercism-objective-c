#import "Sublist.h"

@implementation SublistExample

+(SublistKind)classifierForFirstList:(NSArray *)first andSecondList:(NSArray *)second {
    if ([first isEqualToArray:second]) {
        return SublistKindEqual;
    }
    else if ([first containsArray:second]) {
        return SublistKindSuperlist;
    }
    else if ([second containsArray:first]) {
        return SublistKindSublist;
    }
    else {
        return SublistKindUnequal;
    }
}

@end


@implementation NSArray (Sublist)

-(BOOL)containsArray:(NSArray *)array {
    if (self.count <= array.count) {
        return NO;
    }
    if (array.count == 0) {
        return YES;
    }

    for (NSArray *subarray in [self windowsOfLength:array.count]) {
        if ([subarray isEqualToArray:array]) {
            return YES;
        }
    }
    return NO;
}

-(NSArray<NSArray *> *)windowsOfLength:(NSUInteger)length {
    __block NSMutableArray *windows = [[NSMutableArray alloc] init];

    [self enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, self.count - length + 1)]
                            options:0
                         usingBlock:^(id obj, NSUInteger index, BOOL *stop) {
                             [windows addObject:[self subarrayWithRange:NSMakeRange(index, length)]];
                         }];

    return windows.copy;
}

@end

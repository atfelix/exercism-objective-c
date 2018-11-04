#import "NSDictionary+Merge.h"

@implementation NSDictionary (Merge)

-(NSDictionary *)merge:(NSDictionary *)other block:(id (^)(id, id))block {
    __block NSMutableDictionary *copy = self.mutableCopy;
    [other enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        copy[key] = block(copy[key], obj);
    }];
    return copy.copy;
}

@end

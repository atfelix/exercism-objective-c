@import Foundation;

@interface NSDictionary (Merge)

-(NSDictionary *)merge:(NSDictionary *)other block:(id (^_Nonnull)(id firstKey, id secondKey))block;

@end

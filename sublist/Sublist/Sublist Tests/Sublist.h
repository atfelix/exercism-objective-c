@import Foundation;

typedef NS_ENUM(NSUInteger, SublistKind) {
    SublistKindEqual,
    SublistKindSublist,
    SublistKindSuperlist,
    SublistKindUnequal,
};

@interface SublistExample : NSObject

+(SublistKind)classifierForFirstList:(nonnull NSArray *)first andSecondList:(nonnull NSArray*)second;

@end


@interface NSArray (Sublist)

-(BOOL)containsArray:(nonnull NSArray*)array;

@end

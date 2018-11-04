@import Foundation;

@interface NSArray (Strain)

-(NSArray *)keep:(BOOL)predicate where:(BOOL(^)(id _Nonnull element))block;
-(NSArray *)discard:(BOOL(^)(id _Nonnull element))block;

@end

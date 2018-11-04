@import Foundation;

@interface NucleotideCount : NSObject

@property (nonatomic, readonly, nonnull) NSDictionary<NSString *, NSNumber *> *nucleotideCounts;

-(nonnull instancetype)initWithStrand:(nonnull NSString *)strand;
-(NSUInteger)count:(nonnull NSString *)singleLetter;

@end

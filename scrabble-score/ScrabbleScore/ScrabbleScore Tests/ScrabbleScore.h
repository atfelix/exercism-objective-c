@import Foundation;

@interface ScrabbleScore : NSObject

@property (nonatomic, readonly) NSUInteger score;

-(instancetype)initWithWord:(nullable NSString*)word;

+(NSUInteger)score:(nullable NSString*)word;

@end

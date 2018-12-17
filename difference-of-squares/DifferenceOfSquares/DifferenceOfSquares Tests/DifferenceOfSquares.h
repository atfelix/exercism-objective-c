@import Foundation;

@interface DifferenceOfSquares : NSObject

@property (nonatomic) NSInteger squareOfSum;
@property (nonatomic) NSInteger sumOfSquares;
@property (nonatomic) NSInteger differenceOfSquares;

-(instancetype)initWithMax:(NSInteger)number;

@end

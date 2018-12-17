#import "DifferenceOfSquares.h"

NSInteger sumOfSquares(NSInteger n);
NSInteger squaresOfSums(NSInteger n);

NSInteger squaresOfSums(NSInteger n) {
    return (n * (n + 1) / 2) * (n * (n + 1) / 2);
}

NSInteger sumOfSquares(NSInteger n) {
    return (2 * n + 1) * n * (n + 1) / 6;
}

@implementation DifferenceOfSquares

-(instancetype)initWithMax:(NSInteger)number {
    self = [super init];
    if (self) {
        _sumOfSquares = sumOfSquares(number);
        _squareOfSum = squaresOfSums(number);
        _differenceOfSquares = _squareOfSum - _sumOfSquares;
    }
    return self;
}

@end

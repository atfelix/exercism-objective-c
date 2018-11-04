#import "CollatzConjecture.h"

@implementation CollatzConjecture

+(NSInteger)stepsForNumber:(NSInteger)number {
    if (number <= 0) {
        return NSNotFound;
    }
    else if (number == 1) {
        return 0;
    }
    else if (number % 2 == 0) {
        return 1 + [CollatzConjecture stepsForNumber:number / 2];
    }
    else {
        return 1 + [CollatzConjecture stepsForNumber:3 * number + 1];
    }
}

@end

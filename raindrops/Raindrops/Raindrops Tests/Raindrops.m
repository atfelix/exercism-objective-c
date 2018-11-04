#import "Raindrops.h"

@implementation Raindrops

-(instancetype)initWithNumber:(NSInteger)number {
    self = [super init];
    if (self) {
        _sounds = [self raindropsFromNumber:number];
    }
    return self;
}

-(NSString *)raindropsFromNumber:(NSInteger)number {
    NSMutableArray *sounds = [[NSMutableArray alloc] init];
    if (number % 3 == 0) {
        [sounds addObject:@"Pling"];
    }
    if (number % 5 == 0) {
        [sounds addObject:@"Plang"];
    }
    if (number % 7 == 0) {
        [sounds addObject:@"Plong"];
    }
    if (sounds.count == 0) {
        [sounds addObject:[NSString stringWithFormat:@"%ld", number]];
    }
    return [sounds componentsJoinedByString:@""];
}

@end

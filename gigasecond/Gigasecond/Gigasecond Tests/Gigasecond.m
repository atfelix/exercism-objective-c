#import "Gigasecond.h"

@implementation Gigasecond

-(instancetype)initWithStartDate:(NSDate *)date {
    self = [super init];
    if (self) {
        _gigasecondDate = [date dateByAddingTimeInterval:1000000000];
    }
    return self;
}

@end

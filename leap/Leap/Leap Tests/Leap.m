#import "Leap.h"

@implementation Leap

-(instancetype)initWithCalendarYear:(NSNumber *)year {
    self = [super init];
    if (self) {
        _isLeapYear = year.isLeapYear;
    }
    return self;
}

@end


@implementation NSNumber (Leap)

-(BOOL)isLeapYear {
    NSInteger selfAsYear = self.integerValue;
    return selfAsYear % 400 == 0
    || (selfAsYear % 100 != 0
        && selfAsYear % 4 == 0);
}

@end

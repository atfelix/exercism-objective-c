#import "Allergies.h"

@interface Allergies ()

@property (nonatomic, readonly) NSUInteger score;

@end

@implementation Allergies

-(instancetype)initWithScore:(NSUInteger)score {
    self = [super init];
    if (self) {
        _score = score;
    }
    return self;
}

-(BOOL)hasAllergy:(NSUInteger)allergen {
    return allergen & self.score;
}

@end

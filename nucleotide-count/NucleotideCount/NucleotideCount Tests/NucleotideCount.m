#import "NucleotideCount.h"
#import "NSDictionary+Merge.h"
#import "NSString+Counter.h"
#import "NSString+Nucleotide.h"

@implementation NucleotideCount

-(instancetype)initWithStrand:(NSString *)strand {
    if (!strand.isValidNucleotide) {
        [NSException raise:@"Invalid input" format:@"Strand must contain only 'A's, 'C's, 'G's, 'T's"];
    }
    self = [super init];
    if (self) {
        _nucleotideCounts = [strand.characterCounter merge:@{
                                                             @"A": @0,
                                                             @"C": @0,
                                                             @"G": @0,
                                                             @"T": @0
                                                             }
                                                     block:^id(id firstValue, id secondValue) {
                                                         return (firstValue) ?: secondValue;
                                                     }];
    }
    return self;
}

-(NSUInteger)count:(NSString *)singleLetter {
    if (singleLetter.length != 1) {
        [NSException raise:@"Invalid input" format:@"input must be exactly one letter"];
    }
    return self.nucleotideCounts[singleLetter].integerValue;
}

@end

#import "ScrabbleScore.h"

@implementation ScrabbleScore

-(instancetype)initWithWord:(NSString *)word {
    self = [super init];
    if (self) {
        _score = [ScrabbleScore score:word];
    }
    return self;
}

+(NSUInteger)score:(nullable NSString*)word {
    __block NSUInteger score = 0;
    NSDictionary *scoreDictionary = self.scrabbleScoreDictionary;
    [word.lowercaseString enumerateSubstringsInRange:NSMakeRange(0, word.length)
                             options:NSStringEnumerationByComposedCharacterSequences
                          usingBlock:^(NSString * substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                              score += [scoreDictionary[substring] unsignedIntegerValue];
                          }];
    return score;
}

+(NSDictionary<NSString *, NSNumber *> *)scrabbleScoreDictionary {
    static NSDictionary *scrabbleDict = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        scrabbleDict = @{
                         @"a": @1,
                         @"b": @3,
                         @"c": @3,
                         @"d": @2,
                         @"e": @1,
                         @"f": @4,
                         @"g": @2,
                         @"h": @4,
                         @"i": @1,
                         @"j": @8,
                         @"k": @5,
                         @"l": @1,
                         @"m": @3,
                         @"n": @1,
                         @"o": @1,
                         @"p": @3,
                         @"q": @10,
                         @"r": @1,
                         @"s": @1,
                         @"t": @1,
                         @"u": @1,
                         @"v": @4,
                         @"w": @4,
                         @"x": @8,
                         @"y": @4,
                         @"z": @10,
                         };
    });
    return scrabbleDict;
}

@end

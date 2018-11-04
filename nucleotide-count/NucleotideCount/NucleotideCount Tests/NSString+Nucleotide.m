#import "NSString+Nucleotide.h"

@implementation NSString (Nucleotide)

-(BOOL)isValidNucleotide {
    __block BOOL isValid = YES;

    [self enumerateSubstringsInRange:NSMakeRange(0, self.length)
                             options:NSStringEnumerationByComposedCharacterSequences
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                              if (![@[@"A", @"C", @"G", @"T"] containsObject:substring]) {
                                  isValid = NO;
                                  *stop = YES;
                              }
                          }];

    return isValid;
}

@end

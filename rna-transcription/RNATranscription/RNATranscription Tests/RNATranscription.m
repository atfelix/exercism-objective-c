#import "RNATranscription.h"

@implementation RNATranscription

-(NSString *)rnaFromDNAStrand:(NSString *)strand {
    if (![RNATranscription isValidRNA:strand]) {
        return nil;
    }
    return [strand stringTranscriptionUsingMap:@{
                                                 @"A": @"U",
                                                 @"C": @"G",
                                                 @"G": @"C",
                                                 @"T": @"A",
                                                 }];
}

+(BOOL)isValidRNA:(NSString *)strand {
    for (NSInteger index = 0; index < strand.length; index++) {
        if (![RNATranscription.characters characterIsMember:[strand characterAtIndex:index]]) {
            return NO;
        }
    }
    return YES;
}

+(NSCharacterSet *)characters {
    return [NSCharacterSet characterSetWithCharactersInString:@"ACGT"];
}

@end


@implementation NSString (Transcription)

-(NSString *)stringTranscriptionUsingMap:(NSDictionary<NSString *,NSString *> *)map {
    NSMutableString *transcription = [[NSMutableString alloc] init];
    for (NSInteger index = 0; index < self.length; index++) {
        NSString *character = [NSString stringWithFormat:@"%c", [self characterAtIndex:index]];
        NSString *transcribedCharacter = map[character];
        if (transcribedCharacter) {
            [transcription appendString:transcribedCharacter];
        }
    }
    return transcription.copy;
}

@end

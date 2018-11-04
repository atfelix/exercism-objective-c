 #import "Bob.h"

@implementation Bob

-(NSString *)hey:(NSString *)input {
    input = [input stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];

    if (input.isEmpty) {
        return @"Fine. Be that way!";
    }
    else if (input.isUppercaseString) {
        return @"Whoa, chill out!";
    }
    else if (input.isQuestion) {
        return @"Sure.";
    }
    else {
        return @"Whatever.";
    }
}

@end


@implementation NSString (Utility)

-(BOOL)isUppercaseString {
    NSScanner *scanner = [NSScanner localizedScannerWithString:self];
    scanner.charactersToBeSkipped = NSCharacterSet.letterCharacterSet.invertedSet;
    [scanner scanUpToCharactersFromSet:NSCharacterSet.letterCharacterSet intoString:nil];
    return [self isEqualToString:self.uppercaseString] && !scanner.atEnd;
}

-(BOOL)isEmpty {
    return self.length == 0;
}

-(BOOL)isQuestion {
    return [self characterAtIndex:self.length - 1] == '?';
}

@end

@import Foundation;

@interface RNATranscription : NSObject

-(NSString *)rnaFromDNAStrand:(NSString *)strand;

@end


@interface NSString (Transcription)

-(NSString *)stringTranscriptionUsingMap:(NSDictionary<NSString *, NSString *> *)map;

@end

@import Foundation;

@interface SpaceAge : NSObject

@property (nonatomic, readonly) NSTimeInterval onMercury;
@property (nonatomic, readonly) NSTimeInterval onVenus;
@property (nonatomic, readonly) NSTimeInterval onEarth;
@property (nonatomic, readonly) NSTimeInterval onMars;
@property (nonatomic, readonly) NSTimeInterval onJupiter;
@property (nonatomic, readonly) NSTimeInterval onSaturn;
@property (nonatomic, readonly) NSTimeInterval onUranus;
@property (nonatomic, readonly) NSTimeInterval onNeptune;
@property (nonatomic, readonly) NSTimeInterval seconds;

-(instancetype)initWithSeconds:(NSUInteger)seconds;

@end

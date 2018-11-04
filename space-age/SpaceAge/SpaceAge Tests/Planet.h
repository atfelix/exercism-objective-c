@import Foundation;

typedef enum : NSUInteger {
    PlanetMercury,
    PlanetVenus,
    PlanetEarth,
    PlanetMars,
    PlanetJupiter,
    PlanetSaturn,
    PlanetUranus,
    PlanetNeptune
} EarthSolarSystem;

@interface Planet : NSObject

@property (nonatomic, readonly) NSTimeInterval lengthOfYear;

-(instancetype)initWithLengthOfYear:(NSTimeInterval)length;
-(NSTimeInterval)lengthInYearsForSeconds:(NSTimeInterval)seconds;

@end


@interface Planet (EarthPlanets)

+(Planet *)solarSystemFromPlanet:(EarthSolarSystem)planet;

@end

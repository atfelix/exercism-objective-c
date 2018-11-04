#import "Planet.h"

@implementation Planet

-(instancetype)initWithLengthOfYear:(NSTimeInterval)length {
    self = [super init];
    if (self) {
        _lengthOfYear = length;
    }
    return self;
}

-(NSTimeInterval)lengthInYearsForSeconds:(NSTimeInterval)seconds {
    return seconds / self.lengthOfYear;
}

@end


@implementation Planet (EarthPlanets)

+(Planet *)solarSystemFromPlanet:(EarthSolarSystem)planet {
    NSTimeInterval earthSecondsPerYear = 31557600;
    switch (planet) {
        case PlanetMercury: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 0.2408467];
        case PlanetVenus: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 0.61519726];
        case PlanetEarth: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear];
        case PlanetMars: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 1.8808158];
        case PlanetJupiter: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 11.862615];
        case PlanetSaturn: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 29.447498];
        case PlanetUranus: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 84.016846];
        case PlanetNeptune: return [[Planet alloc] initWithLengthOfYear:earthSecondsPerYear * 164.79132];
        default: return nil;
    }
}

@end

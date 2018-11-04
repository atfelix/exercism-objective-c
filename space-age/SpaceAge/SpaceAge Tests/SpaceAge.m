#import "SpaceAge.h"
#import "Planet.h"

@implementation SpaceAge

-(instancetype)initWithSeconds:(NSUInteger)seconds {
    self = [super init];
    if (self) {
        _seconds = seconds;
    }
    return self;
}

-(NSTimeInterval)onMercury {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetMercury];
}

-(NSTimeInterval)onVenus {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetVenus];
}

-(NSTimeInterval)onEarth {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetEarth];
}

-(NSTimeInterval)onMars {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetMars];
}

-(NSTimeInterval)onJupiter {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetJupiter];
}

-(NSTimeInterval)onSaturn {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetSaturn];
}

-(NSTimeInterval)onUranus {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetUranus];
}

-(NSTimeInterval)onNeptune {
    return [self convertFromEarthSeconds:self.seconds toEarthSolarSystemPlanet:PlanetNeptune];
}

-(NSTimeInterval)convertFromEarthSeconds:(NSTimeInterval)seconds toEarthSolarSystemPlanet:(EarthSolarSystem)planet {
    return [[Planet solarSystemFromPlanet:planet] lengthInYearsForSeconds:seconds];
}

@end

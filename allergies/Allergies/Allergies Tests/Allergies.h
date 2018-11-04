@import Foundation;

typedef NS_OPTIONS(NSUInteger, Allergen) {
    AllergenEggs = 1 << 0,
    AllergenPeanuts = 1 << 1,
    AllergenShellfish = 1 << 2,
    AllergenStrawberries = 1 << 3,
    AllergenTomatoes = 1 << 4,
    AllergenChocolate = 1 << 5,
    AllergenPollen = 1 << 6,
    AllergenCats = 1 << 7,
};

@interface Allergies : NSObject

-(instancetype)initWithScore:(NSUInteger)score;
-(BOOL)hasAllergy:(NSUInteger)allergen;

@end

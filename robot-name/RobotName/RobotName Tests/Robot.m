#import "Robot.h"

@interface Robot ()

@property (nonatomic) RobotNameRegistry *registry;

@end

@implementation Robot

-(instancetype)init {
    self = super.init;
    if (self) {
        _registry = [[RobotNameRegistry alloc] init];
        [_registry registerRobot:self];
    }
    return self;
}

-(NSString *)name {
    return self.registry[self];
}

-(void)reset {
    [self.registry resetNameForRobot:self];
}

@end


@interface RobotNameRegistry ()

@property (nonatomic) NSMutableSet<NSString *> *usedNames;
@property (nonatomic) NSMapTable<Robot *, NSString *> *registry;
@property (nonatomic, class, readonly) RobotNameRegistry *instance;

@end


@implementation RobotNameRegistry

+(RobotNameRegistry *)instance {
    static RobotNameRegistry *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[RobotNameRegistry alloc] initPrivate];
    });
    return instance;
}

-(instancetype)init {
    return RobotNameRegistry.instance;
}

-(instancetype)initPrivate {
    self = [super init];
    if (self) {
        _usedNames = [[NSMutableSet alloc] init];
        _registry = [[NSMapTable alloc] initWithKeyOptions:NSMapTableStrongMemory
                                              valueOptions:NSMapTableStrongMemory
                                                  capacity:10];
    }
    return self;
}

-(void)registerRobot:(Robot *)robot {
    NSString *name = [self unusedRandomName];
    [self.usedNames addObject:name];
    self.registry[robot] = name;
}

-(NSString *)objectForKeyedSubscript:(Robot *)robot {
    return self.registry[robot];
}

-(void)resetNameForRobot:(Robot *)robot {
    self.registry[robot] = [self unusedRandomName];
}

-(NSString *)unusedRandomName {
    NSString *randomName = [self randomName];
    while ([self.usedNames containsObject:randomName]) {
        randomName = [self randomName];
    }
    return randomName;
}

-(NSString *)randomName {
    return [NSString stringWithFormat:@"%c%c%c%c%c", [self randomUppercaseLetter],
                                                     [self randomUppercaseLetter],
                                                     [self randomDigit],
                                                     [self randomDigit],
                                                     [self randomDigit]];
}

-(unichar)randomUppercaseLetter {
    return arc4random_uniform(26) + 'A';
}

-(unichar)randomDigit {
    return arc4random_uniform(10) + '0';
}

@end


@implementation NSMapTable (Subscripting)

-(id)objectForKeyedSubscript:(id)key {
    return [self objectForKey:key];
}

-(void)setObject:(id)obj forKeyedSubscript:(id)key {
    if (obj) {
        [self setObject:obj forKey:key];
    }
    else {
        [self removeObjectForKey:key];
    }
}

@end

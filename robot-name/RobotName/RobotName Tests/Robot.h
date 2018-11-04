@import Foundation;

@interface Robot : NSObject

@property (nonatomic, copy, readonly) NSString *name;

-(void)reset;

@end

@interface RobotNameRegistry : NSObject

-(void)registerRobot:(Robot *)robot;
-(void)resetNameForRobot:(Robot *)robot;
-(NSString *)objectForKeyedSubscript:(Robot *)robot;

@end


@interface NSMapTable (Subscripting)

-(id)objectForKeyedSubscript:(id)key;
-(void)setObject:(id)obj forKeyedSubscript:(id)key;

@end

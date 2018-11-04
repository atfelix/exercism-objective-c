@import Foundation;

@interface GradeSchool : NSObject

@property (nonatomic, readonly) NSDictionary<NSNumber *, NSArray<NSString *>*> *db;
@property (nonatomic, readonly) NSDictionary<NSNumber *, NSArray<NSString *>*> *sort;

-(void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade;
-(NSArray<NSString *> *)studentsInGrade:(NSNumber *)grade;

@end

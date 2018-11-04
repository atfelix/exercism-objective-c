#import "GradeSchool.h"

@interface GradeSchool ()

@property (nonatomic) NSMutableDictionary<NSNumber *, NSArray<NSString *>*> *database;

@end

@implementation GradeSchool

-(instancetype)init {
    self = [super init];
    if (self) {
        _database = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(NSDictionary<NSNumber *,NSArray<NSString *> *> *)db {
    return self.database.copy;
}

-(void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade {
    if (![self.database objectForKey:grade]) {
        self.database[grade] = [[NSArray alloc] init];
    }
    self.database[grade] = [self.database[grade] arrayByAddingObject:name];
}

-(NSArray<NSString *> *)studentsInGrade:(NSNumber *)grade {
    return self.database[grade] ?: @[];
}

-(NSDictionary<NSNumber *, NSArray<NSString *> *> *)sort {
    NSMutableDictionary<NSNumber *, NSArray<NSString *> *> *sortedStudentsByGrade = [[NSMutableDictionary alloc] init];

    for (NSNumber *grade in self.database) {
        sortedStudentsByGrade[grade] = [self.database[grade] sortedArrayUsingComparator:^NSComparisonResult(NSString *studentOne, NSString *studentTwo) {
            return (NSComparisonResult)[studentOne localizedCompare:studentTwo];
        }];
    }
    return sortedStudentsByGrade;
}

@end

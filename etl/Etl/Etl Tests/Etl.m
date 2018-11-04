//
//  Etl.m
//  Etl Tests
//
//  Created by atfelix on 2018-08-02.
//  Copyright © 2018 Adam Felix. All rights reserved.
//

#import "Etl.h"

@implementation Etl

+(NSDictionary<NSString *, NSNumber *> *)transform:(NSDictionary<NSNumber *,NSArray<NSString *> *> *)oldData {
    NSMutableDictionary<NSString *, NSNumber *> *etl = [[NSMutableDictionary alloc] init];

    for (NSNumber *number in oldData) {
        for (NSString *letter in oldData[number]) {
            etl[letter.localizedLowercaseString] = number;
        }
    }

    return etl;
}

@end

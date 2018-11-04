//
//  Etl.h
//  Etl Tests
//
//  Created by atfelix on 2018-08-02.
//  Copyright © 2018 Adam Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Etl : NSObject

+(NSDictionary<NSString *, NSNumber *> *)transform:(NSDictionary<NSNumber *, NSArray<NSString *> *> *)oldData;

@end

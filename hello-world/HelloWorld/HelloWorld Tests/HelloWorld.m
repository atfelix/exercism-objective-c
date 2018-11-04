//
//  HelloWorld.m
//  HelloWorld Tests
//
//  Created by atfelix on 2018-07-30.
//  Copyright © 2018 Adam Felix. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

-(NSString *)hello:(NSString *)input {
    return [NSString stringWithFormat:@"Hello, %@!", input ?: @"World"];
}

@end

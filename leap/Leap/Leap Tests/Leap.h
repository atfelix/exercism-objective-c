//
//  Leap.h
//  Leap Tests
//
//  Created by atfelix on 2018-08-07.
//  Copyright © 2018 Adam Felix. All rights reserved.
//

@import Foundation;

@interface Leap : NSObject

@property (nonatomic, readonly) BOOL isLeapYear;

-(instancetype)initWithCalendarYear:(NSNumber *)year;

@end


@interface NSNumber (Leap)

-(BOOL)isLeapYear;

@end

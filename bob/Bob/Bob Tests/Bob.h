//
//  Bob.h
//  Bob Tests
//
//  Created by atfelix on 2018-08-04.
//  Copyright © 2018 Adam Felix. All rights reserved.
//

@import Foundation;

@interface Bob : NSObject

-(nonnull NSString *)hey:(NSString*)input;

@end

@interface NSString (Utility)

@property (nonatomic, readonly) BOOL isUppercaseString;
@property (nonatomic, readonly) BOOL isEmpty;
@property (nonatomic, readonly) BOOL isQuestion;

@end

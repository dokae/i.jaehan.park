//
//  Bank.h
//  170123 - 1 TestBank2
//
//  Created by 박재한 on 2017. 1. 23..
//  Copyright © 2017년 noName. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bank : NSObject

@property NSString *name;
@property NSString *location;

- (void)changeLocation:(NSString *)newLocation;


@end

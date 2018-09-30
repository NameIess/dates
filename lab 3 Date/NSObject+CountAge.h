//
//  NSObject+CountAge.h
//  lab 3 Date
//
//  Created by Dima  on 9/30/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountAge : NSObject 

- (NSDateComponents* ) countAge:(int) year month:(int) month day:(int) day;
- (void) printInfo:(NSDateComponents*) difference;

@end

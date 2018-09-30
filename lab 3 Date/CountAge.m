//
//  CountAge.m
//  lab 3 Date
//
//  Created by Dima  on 9/30/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+CountAge.h"

@implementation CountAge

- (NSDateComponents* ) countAge:(int) birthYear month:(int) birthMonth day:(int) birthDay {
    NSDateComponents* components = [[NSDateComponents alloc] init];
    components.year = birthYear;
    components.month = birthMonth;
    components.day = birthDay;
      
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDate* birthDate = [calendar dateFromComponents:components];
    
    NSDate* currentDate = [NSDate date];
      
    NSDateComponents* difference = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:birthDate toDate:currentDate options:0];
    
   // NSLog(@" %@ , %@ , %@", [NSNumber numberWithInteger:difference.year], [NSNumber numberWithInteger:difference.month], [NSNumber numberWithInteger:difference.day]);
    
    return difference;
}

- (void) printInfo:(NSDateComponents *)difference {
    NSLog(@"Print info about age: %@", difference);
}

@end

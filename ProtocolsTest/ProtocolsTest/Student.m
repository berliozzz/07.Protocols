//
//  Student.m
//  ProtocolsTest
//
//  Created by Николай Стома on 20.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Student.h"

@implementation Student


- (void) study
{
    
}

- (void) work
{
    
}

#pragma mark - Patient
- (BOOL) areYouOk
{
    BOOL ok = arc4random() % 2;
    NSLog(@"IS student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) takePill
{
    NSLog(@"Student %@ takes a pill", self.name);
}

- (void) makeShot
{
    NSLog(@"Student %@ takes make shot", self.name);
}

- (NSString*) howIsYourFamily
{
    return @"My family is doing well! ";
}




@end

//
//  Developer.m
//  ProtocolsTest
//
//  Created by Николай Стома on 20.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (void) work
{
    
}


#pragma mark - Patient
- (BOOL) areYouOk
{
    BOOL ok = arc4random() % 2;
    NSLog(@"IS developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) takePill
{
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot
{
    NSLog(@"Developer %@ takes make shot", self.name);
}

- (NSString*) howIsYourJob
{
    return @"My job is awesome!";
}

@end

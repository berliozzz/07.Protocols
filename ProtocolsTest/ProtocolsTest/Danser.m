 //
//  Danser.m
//  ProtocolsTest
//
//  Created by Николай Стома on 20.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Danser.h"

@implementation Danser

-(void) dance
{
    
}

- (void) work
{
    
}

#pragma mark - Patient
- (BOOL) areYouOk
{
    BOOL ok = arc4random() % 2;
    NSLog(@"IS danser %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) takePill
{
    NSLog(@"Danser %@ takes a pill", self.name);
}

- (void) makeShot
{
    NSLog(@"Danser %@ takes make shot", self.name);
}

@end

//
//  Patient.h
//  ProtocolsTest
//
//  Created by Николай Стома on 20.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Patient <NSObject>

@required
@property (strong, nonatomic) NSString* name;
- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYourJob;

@end

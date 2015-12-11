//
//  Danser.h
//  ProtocolsTest
//
//  Created by Николай Стома on 20.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Danser : NSObject <Patient>

@property (strong, nonatomic) NSString* favoriteDance;
@property (strong, nonatomic) NSString* name;


-(void) dance;





@end

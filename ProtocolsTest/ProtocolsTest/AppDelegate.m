//
//  AppDelegate.m
//  ProtocolsTest
//
//  Created by Николай Стома on 20.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Developer.h"
#import "Danser.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Danser* dancer1 = [[Danser alloc] init];
    Danser* dancer2 = [[Danser alloc] init];
    
    Student* student1 = [[Student alloc] init];
    Student* student2 = [[Student alloc] init];
    Student* student3 = [[Student alloc] init];
    
    Developer* developer1 = [[Developer alloc] init];
    
    dancer1.name = @"Vasya";
    dancer2.name = @"Petya";
    student1.name = @"Natasha";
    student2.name = @"Elina";
    student3.name = @"Grisha";
    developer1.name = @"Nikolay";
    
    NSArray* patientsArray = [NSArray arrayWithObjects:dancer1, dancer2, student1, student2, student3, developer1, nil];

    for (id <Patient> patient in patientsArray)
    {
        NSLog(@"Patient %@", patient.name);
        
        if ([patient respondsToSelector:@selector(howIsYourFamily)])
        {
            NSLog(@"How is your family?\n%@", [patient howIsYourFamily]);
        }
        
        if ([patient respondsToSelector:@selector(howIsYourJob)])
        {
            NSLog(@"How is your job?\n%@", [patient howIsYourJob]);
        }
        
        if (![patient areYouOk])
        {
            [patient takePill];
            
            if (![patient areYouOk])
            {
                [patient makeShot];
            }
        }
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

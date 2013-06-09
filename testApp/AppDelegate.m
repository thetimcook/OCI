//
//  AppDelegate.m
//  testApp
//
//  Created by Tim Cook on 6/6/13.
//  Copyright (c) 2013 Tim Cook. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    
    //A road trip to KC
    
    
    //Packing the car for the trip.
        //Perform a while loop that increments an int variable and outputs to the console.
    int bags = 4;
    int carSpace = 5;
    
    while (bags <= carSpace) {
        if (bags == carSpace) {
            NSLog(@"My car is packed and we are off to KC");
        } else {
            NSLog(@"I have enough room for some more luggage");
        }
        bags++;
        
    }
    
    //Picking up a snack
        //Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
    float charge = 3.62f;
    
    NSLog(@"I stop at the gas station to get a snack for the road and they had my favorite candy bar for $%.2f.", charge);
    NSLog(@"I just had to buy it.");
    NSLog(@"With the coupon I had, the total came to $%d.00.", (int)charge);
    
    //Picking a route to KC.
        //Use an it, else if and else check using any of the types of your choice.
    int miles = 230;
    int route = 200;
    
    if (route > miles) {
        NSLog(@"We are going to take the long route to KC.");
    } else if (route < miles) {
        NSLog(@"We are going to take the short route to KC.");
    } else {
        NSLog(@"We are going to take the correct route to KC.");
    }
    
    //We head out and make some stops along the way.
        //Perform a single for loop printing out values to the concole.
    int stops = 4;
    NSLog(@"On out trip we alternated driving at each of our %d stops.", stops);
    for (int stopsLeft = stops-1; stopsLeft >= 0; stopsLeft--) {
        if (stopsLeft == stops-1) {
            NSLog(@"We hit our first stop and trade places. Only %d stops to go.", stopsLeft);
        } else if (stopsLeft == 0) {
            NSLog(@"We made it to KC!");
        } else {
            NSLog(@"We make another stop and only %d left.", stopsLeft);
        }
    }
    
    //The trip up to KC was in the hands of the weather man.
        //Perform an AND, OR comparison. Use float, int and BOOL types.
    int roadWork = 2;
    BOOL storms = YES;
    
    if ((roadWork > 0) && (storms < YES)) {
        NSLog(@"It was a horrible trip with storms and roadwork making us really late.");
    } else {
        NSLog(@"We made really good time on our trip. Clear skys and an open road!");
    }
    if ((storms == YES) || (roadWork > 0)) {
        NSLog(@"We were a little bit delayed, but not by much.");
    }
    
    //Listening to music on the road.
        //Perform a nested loop printing out values to the console.
    int albums = 2;
    int songs = 6;
    NSLog(@"We need to have some music playing, so we brought %d albums.", albums);
    for (int i=0; albums > i; i++) {
        NSLog(@"Album: %d", (i + 1));
        for (int j=0; songs > j; j++) {
            NSLog(@"Song: %d", (j + 1));
        }
    }
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

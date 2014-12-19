//
//
//  Created by Konstantin Bender.
//  Copyright (c) 2013 Konstantin Bender. All rights reserved.
//

#import "SAAppController+Private.h"

@implementation SAAppController

#pragma mark -
#pragma mark Application Delegate Methods

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self appControllerLoad];
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.window makeKeyAndVisible];
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
    [self appControllerUnload];
}

#pragma mark -
#pragma mark Private

- (void)appControllerLoad {
    [self appControllerSetUpSelf];
    [self appControllerSetUpWindow];
    [self appControllerSetUpHelloWorldController];
    [self appControllerHookUp];
}

- (void)appControllerUnload {
    [self appControllerBreakUp];
    [self appControllerTearDownHelloWorldController];
    [self appControllerTearDownWindow];
    [self appControllerTearDownSelf];
}

- (void)appControllerSetUpSelf {
    // Nothing to do yet.
}

- (void)appControllerTearDownSelf {
    // Nothing to do yet.
}

- (void)appControllerSetUpWindow {
    UIScreen *const mainScreen = [UIScreen mainScreen];
    CGRect const mainScreenBounds = [mainScreen bounds];
    UIWindow *const window = [[UIWindow alloc] initWithFrame:mainScreenBounds];
    [self setWindow:window];
}

- (void)appControllerTearDownWindow {
    [self setWindow:nil];
}

- (void)appControllerSetUpHelloWorldController {
    SAHelloWorldController *const helloWorldController = [SAHelloWorldController new];
    [self setHelloWorldController:helloWorldController];
}

- (void)appControllerTearDownHelloWorldController {
    [self setHelloWorldController:nil];
}

- (void)appControllerHookUp {
    [self.window setRootViewController:self.helloWorldController];
}

- (void)appControllerBreakUp {
    [self.window setRootViewController:nil];
}

@end

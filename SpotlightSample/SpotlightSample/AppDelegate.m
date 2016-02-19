//
//  AppDelegate.m
//  SpotlightSample
//
//  Created by Renato Matos on 19/02/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import "AppDelegate.h"
#import "SpotlightHandler.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

#pragma mark - Return Spotlight

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler
{
    if ([userActivity.activityType isEqualToString:CSSearchableItemActionType]) {
        NSString *uniqueIdentifier = userActivity.userInfo[CSSearchableItemActivityIdentifier];
        
        [SpotlightHandler openController:uniqueIdentifier];
    }
    
    return YES;
}

@end

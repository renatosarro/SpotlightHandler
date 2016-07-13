//
//  SpotlightHandler.h
//  SpotlightSample
//
//  Created by Renato Matos on 19/02/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <MobileCoreServices/MobileCoreServices.h>
#import <CoreSpotlight/CoreSpotlight.h>

@interface SpotlightHandler : NSObject

+ (void)openController:(NSString *)identifier;

+ (void)openControllerWith:(UINavigationController *)navigationController identifier:(NSString *)identifier;

+ (void)setupCoreSpotlightSearch:(UIImage *)iconImage title:(NSString *)title description:(NSString *)description keywords:(NSArray *)keywords storyboard:(NSString *)storyboard controller:(NSString *)controller;

@end

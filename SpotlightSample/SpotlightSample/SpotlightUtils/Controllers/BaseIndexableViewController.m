//
//  BaseIndexableViewController.m
//  SpotlightSample
//
//  Created by Renato Matos on 19/02/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import "BaseIndexableViewController.h"
#import "SpotlightHandler.h"

@interface BaseIndexableViewController ()

@end

@implementation BaseIndexableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.SpotIndexable) {
        [self indexController];
    }
}

#pragma mark - Spotlight

- (void)indexController {
    [SpotlightHandler setupCoreSpotlightSearch:nil title:self.SpotTitle description:self.SpotDescription keywords:[self.SpotKeywords componentsSeparatedByString:@","] storyboard:[NSString stringWithFormat:@"%@", [self.storyboard valueForKey:@"name"]] controller:[NSString stringWithFormat:@"%@", self.class]];
}

@end

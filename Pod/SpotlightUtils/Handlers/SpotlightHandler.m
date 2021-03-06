//
//  SpotlightHandler.m
//  SpotlightSample
//
//  Created by Renato Matos on 19/02/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import "SpotlightHandler.h"

@implementation SpotlightHandler

+ (void)openController:(NSString *)identifier {
    [self openControllerWith:nil identifier:identifier];
}

+ (void)openControllerWith:(UINavigationController *)navigationController identifier:(NSString *)identifier {
    NSArray *arr = [identifier componentsSeparatedByString:@"|"];
    NSString *storyboard = arr[0];
    NSString *controller = arr[1];
    
    id viewController = [[UIStoryboard storyboardWithName:storyboard bundle:nil] instantiateViewControllerWithIdentifier:controller];
    
    if (!navigationController) {
        navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    }
    
    [UIApplication sharedApplication].delegate.window.rootViewController = navigationController;
    [[UIApplication sharedApplication].delegate.window makeKeyAndVisible];
}

+ (void)setupCoreSpotlightSearch:(UIImage *)iconImage title:(NSString *)title description:(NSString *)description keywords:(NSArray *)keywords storyboard:(NSString *)storyboard controller:(NSString *)controller
{
    CSSearchableItemAttributeSet *attibuteSet = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:(__bridge NSString *)kUTTypeImage];
    attibuteSet.title = NSLocalizedString(title, title);
    attibuteSet.contentDescription = description;
    attibuteSet.keywords = keywords;
    
    UIImage *image = iconImage ? iconImage : [UIImage imageNamed:@"AppIcon"];
    
    NSData *imageData = [NSData dataWithData:UIImagePNGRepresentation(image)];
    attibuteSet.thumbnailData = imageData;
    
    CSSearchableItem *item = [[CSSearchableItem alloc] initWithUniqueIdentifier:[NSString stringWithFormat:@"%@|%@", storyboard, controller]
                                                               domainIdentifier:[[NSBundle mainBundle] bundleIdentifier]
                                                                   attributeSet:attibuteSet];
    if (item) {
        [[CSSearchableIndex defaultSearchableIndex] indexSearchableItems:@[item] completionHandler:^(NSError * _Nullable error) {
            if (!error) {
                NSLog(@"Item indexed");
            }
        }];
    }
}


@end

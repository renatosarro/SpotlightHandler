//
//  BaseIndexableViewController.h
//  SpotlightSample
//
//  Created by Renato Matos on 19/02/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseIndexableViewController : UIViewController

@property (nonatomic) IBInspectable BOOL SpotIndexable;
@property (nonatomic) IBInspectable NSString *SpotTitle;
@property (nonatomic) IBInspectable NSString *SpotDescription;
@property (nonatomic) IBInspectable NSString *SpotKeywords;

@end

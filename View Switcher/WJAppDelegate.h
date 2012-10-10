//
//  WJAppDelegate.h
//  View Switcher
//
//  Created by Wenjian Zhou on 10/7/12.
//  Copyright (c) 2012 Wenjian Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WJSwitchViewController;
@interface WJAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) WJSwitchViewController *switchViewController;
@property (strong, nonatomic) UIWindow *window;

@end

//
//  WJSwitchViewController.h
//  View Switcher
//
//  Created by Wenjian Zhou on 10/7/12.
//  Copyright (c) 2012 Wenjian Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WJBlueViewController;
@class WJYellowViewController;

@interface WJSwitchViewController : UIViewController

@property (strong, nonatomic) WJBlueViewController *blueViewController;
@property (strong, nonatomic) WJYellowViewController  *yellowViewController;

- (IBAction)switchViews:(id)sender;

@end

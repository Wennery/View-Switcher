//
//  WJSwitchViewController.m
//  View Switcher
//
//  Created by Wenjian Zhou on 10/7/12.
//  Copyright (c) 2012 Wenjian Zhou. All rights reserved.
//

#import "WJSwitchViewController.h"
#import "WJBlueViewController.h"
#import "WJYellowViewController.h"

@interface WJSwitchViewController ()

@end

@implementation WJSwitchViewController
@synthesize blueViewController;
@synthesize yellowViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.blueViewController = [[WJBlueViewController alloc]
                               initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}

- (IBAction)switchViews:(id)sender {
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            self.yellowViewController = [[WJYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
            
        }
        [blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
        
    } else {
        if (self.blueViewController == nil) {
            self.blueViewController = [[WJBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        }
    [yellowViewController.view removeFromSuperview];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
}

@end

//
//  MViewController.h
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCInteractor.h"
#import "MKeyPadViewController.h"
#import "MOperationsViewController.h"

@interface MViewController : UIViewController<MVCInteractorDelegate, MOperationsDelegate, MKeyPadDelegate>

// Button Outlets on the view
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (weak, nonatomic) IBOutlet UIButton *buttonOneOutlet;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwoOutlet;
@property (weak, nonatomic) IBOutlet UIButton *buttonThreeOutlet;
@property (weak, nonatomic) IBOutlet UIButton *buttonFourOutlet;

// Result Label on the View where the result of the operation is displayed
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

// Button Actions on the view
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)buttonAction:(id)sender;
- (IBAction)evaluateAction:(id)sender;

// Popover Container to hold MKeyPadVC & MOperationsVC
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (nonatomic, strong) UIPopoverController *popOverContainer;

@end

//
//  MOperationsViewController.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import "MOperationsViewController.h"
#import "MOVCInteractor.h"

@implementation MOperationsViewController

// Set the preferred content size for this popover.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (id)init
{
    self = [super init];
    
    self.preferredContentSize = CGSizeMake(320.0, 80.0);
    
    return self;
}

// Mainly just setup the styles.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self styleAppearance];
}

// Set the background and a border, also style the buttons..
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)styleAppearance
{
    self.view.backgroundColor = [UIColor blackColor];
    self.view.layer.borderWidth = 2.0;
    self.view.layer.borderColor = [UIColor whiteColor].CGColor;
    self.view.layer.cornerRadius = 10.0;
    
    _plusButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _plusButtonOutlet.layer.borderWidth = 2.0;
    _plusButtonOutlet.layer.cornerRadius = 5.0;
    
    _minusButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _minusButtonOutlet.layer.borderWidth = 2.0;
    _minusButtonOutlet.layer.cornerRadius = 5.0;
    
    _multiplicationButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _multiplicationButtonOutlet.layer.borderWidth = 2.0;
    _multiplicationButtonOutlet.layer.cornerRadius = 5.0;
    
    _divisionButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _divisionButtonOutlet.layer.borderWidth = 2.0;
    _divisionButtonOutlet.layer.cornerRadius = 5.0;
}

// Passes the button to the interactor, which returns the correct operand.
// In turn it sends it (the operand) to the MViewController.m
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)buttonPressedAction:(id)sender
{
    if (_mOperationsDelegate != nil) {
        [_mOperationsDelegate displayOperand:[[MOVCInteractor interactor] determineOperandFromButton:sender]];
    }
}


@end

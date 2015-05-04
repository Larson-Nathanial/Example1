//
//  MKeyPadViewController.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import "MKeyPadViewController.h"
#import "MKVCInteractor.h"

@implementation MKeyPadViewController

// Set the preferred content size for this popover.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (id)init
{
    self = [super init];
    
    self.preferredContentSize = CGSizeMake(320.0, 240.0);
    
    return self;
}

// Mainly just setup the styles.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self styleAppearance];
}

- (void)styleAppearance
{
    self.view.backgroundColor = [UIColor blackColor];
    self.view.layer.borderWidth = 2.0;
    self.view.layer.borderColor = [UIColor whiteColor].CGColor;
    self.view.layer.cornerRadius = 10.0;
    
    // Style the buttons
    _zeroButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _zeroButtonOutlet.layer.borderWidth = 2.0;
    _zeroButtonOutlet.layer.cornerRadius = 5.0;
    
    _oneButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _oneButtonOutlet.layer.borderWidth = 2.0;
    _oneButtonOutlet.layer.cornerRadius = 5.0;
    
    _twoButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _twoButtonOutlet.layer.borderWidth = 2.0;
    _twoButtonOutlet.layer.cornerRadius = 5.0;
    
    _threeButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _threeButtonOutlet.layer.borderWidth = 2.0;
    _threeButtonOutlet.layer.cornerRadius = 5.0;
    
    _fourButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _fourButtonOutlet.layer.borderWidth = 2.0;
    _fourButtonOutlet.layer.cornerRadius = 5.0;
    
    _fiveButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _fiveButtonOutlet.layer.borderWidth = 2.0;
    _fiveButtonOutlet.layer.cornerRadius = 5.0;
    
    _sixButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _sixButtonOutlet.layer.borderWidth = 2.0;
    _sixButtonOutlet.layer.cornerRadius = 5.0;
    
    _sevenButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _sevenButtonOutlet.layer.borderWidth = 2.0;
    _sevenButtonOutlet.layer.cornerRadius = 5.0;
    
    _eightButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _eightButtonOutlet.layer.borderWidth = 2.0;
    _eightButtonOutlet.layer.cornerRadius = 5.0;
    
    _nineButtonOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _nineButtonOutlet.layer.borderWidth = 2.0;
    _nineButtonOutlet.layer.cornerRadius = 5.0;
    
}

// Passes the button to the interactor, which returns the correct number.
// In turn it sends it (the number) to the MViewController.m
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)buttonAction:(id)sender {
    if (_mKeyPadDelegate != nil) {
        [_mKeyPadDelegate displayNumberSelected:[[MKVCInteractor interactor] determineNumberFromButton:sender]];
    }
}
@end

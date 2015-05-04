//
//  MKeyPadViewController.h
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MKeyPadDelegate <NSObject>

// Delegate Method(s) used in MViewController.m
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@required
- (void)displayNumberSelected:(NSNumber *)number;

@end

@interface MKeyPadViewController : UIViewController

// Button Outlets on the view
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (weak, nonatomic) IBOutlet UIButton *zeroButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *oneButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *twoButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *threeButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *fourButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *fiveButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *sixButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *sevenButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *eightButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *nineButtonOutlet;

// Button Action on the view
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)buttonAction:(id)sender;

// Custom Delegate Method to Pass Selected Number to MViewController
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (nonatomic, weak) id<MKeyPadDelegate> mKeyPadDelegate;

@end

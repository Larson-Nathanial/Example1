//
//  MOperationsViewController.h
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MOperationsDelegate <NSObject>

// Delegate Method(s) used in MViewController.m
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@required
- (void)displayOperand:(NSString *)operand;

@end

@interface MOperationsViewController : UIViewController

// Button Outlets on the view
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (weak, nonatomic) IBOutlet UIButton *plusButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *minusButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *multiplicationButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *divisionButtonOutlet;

// Button Action on the view
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)buttonPressedAction:(id)sender;

// Custom Delegate Method to Pass Selected Operand to MViewController
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (nonatomic, weak) id<MOperationsDelegate> mOperationsDelegate;

@end

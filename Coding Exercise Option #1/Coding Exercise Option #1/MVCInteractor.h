//
//  MVCInteractor.h
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVCInteractorDelegate <NSObject>

// Delegate Methods used in MViewController.m to perform operations.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@required
- (void)displayOperandsVC;
- (void)displayKeyPadVCForButtonOne;
- (void)displayKeyPadVCForButtonThree;
- (void)clearTitleForButton:(UIButton *)button;
- (void)displayValidationError:(NSString *)error;

@end

@interface MVCInteractor : NSObject

// Class Method, this class can only be created 1x
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ (MVCInteractor *)interactor;

// Action method to determine which delegate method to call.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)determineActionFromButton:(UIButton *)button;

// Performs selected operation and returns the result to MViewController.m
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (NSString *)performOperation:(NSString *)operation withFirstNumber:(NSString *)firstNumber andSecondNumber:(NSString *)secondNumber;

// Delegate
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
@property (nonatomic, weak) id<MVCInteractorDelegate> mVCInteractorDelegate;

@end

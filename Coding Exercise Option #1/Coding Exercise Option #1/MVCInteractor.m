//
//  MVCInteractor.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import "MVCInteractor.h"

@implementation MVCInteractor

// Creation of this class.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ (MVCInteractor *)interactor
{
    static MVCInteractor *interactor = nil;
    
    if (!interactor) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            interactor = [[self alloc] initPrivate];
        });
    }
    return interactor;
}

// Custom Instance method, additional setup can be included here.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (instancetype)initPrivate
{
    self = [super init];
    return self;
}

// Action method to determine which delegate method to call, also calls the
// delegate method to clear previously entered information from the tapped
// button.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)determineActionFromButton:(UIButton *)button
{
    if (_mVCInteractorDelegate != nil) {
        
        [_mVCInteractorDelegate clearTitleForButton:button];
        
        if (button.tag == 1) {
            [_mVCInteractorDelegate displayKeyPadVCForButtonOne];
        }else if (button.tag == 2) {
            [_mVCInteractorDelegate displayOperandsVC];
        }else if (button.tag == 3) {
            [_mVCInteractorDelegate displayKeyPadVCForButtonThree];
        }else {
            return;
        }
    }else {
        return;
    }
}

// Calculates the result of the values and operand input.  Also checks for
// some invalid data. Returns the result 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (NSString *)performOperation:(NSString *)operation withFirstNumber:(NSString *)firstNumber andSecondNumber:(NSString *)secondNumber
{
    NSString *missingInput = @"";
    
    if (operation == nil || [operation isEqualToString:@""]) {
        missingInput = [missingInput stringByAppendingString:@"Operand "];
    }
    
    if (firstNumber == nil || [firstNumber isEqualToString:@""]) {
        missingInput = [missingInput stringByAppendingString:@"First Number "];
    }
    
    if (secondNumber == nil || [secondNumber isEqualToString:@""]) {
        missingInput = [missingInput stringByAppendingString:@"Second Number"];
    }
    
    if (![missingInput isEqualToString:@""]) {
        if (_mVCInteractorDelegate != nil) {
            [_mVCInteractorDelegate displayValidationError:missingInput];
        }
        return nil;
    }
    
    // Perform the Operation
    if ([operation isEqualToString:@"+"]) {
        return [NSString stringWithFormat:@"%.2f", firstNumber.floatValue + secondNumber.floatValue];
    }else if ([operation isEqualToString:@"-"]) {
        return [NSString stringWithFormat:@"%.2f", firstNumber.floatValue - secondNumber.floatValue];
    }else if ([operation isEqualToString:@"X"]) {
        return [NSString stringWithFormat:@"%.2f", firstNumber.floatValue * secondNumber.floatValue];
    }else if ([operation isEqualToString:@"/"]) {
        return [NSString stringWithFormat:@"%.2f", firstNumber.floatValue / secondNumber.floatValue];
    }else {
        return nil;
    }
}



@end

//
//  MOVCInteractor.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import "MOVCInteractor.h"

@implementation MOVCInteractor

// Creation of this class.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ (MOVCInteractor *)interactor
{
    static MOVCInteractor *interactor = nil;
    
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

// Method that returns an operand based upon which button was tapped.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (NSString *)determineOperandFromButton:(UIButton *)button
{
    if (button.tag == 1) {
        return @"+";
    }else if (button.tag == 2) {
        return @"-";
    }else if (button.tag == 3) {
        return @"X";
    }else if (button.tag == 4) {
        return @"/";
    }else {
        return nil;
    }
}

@end

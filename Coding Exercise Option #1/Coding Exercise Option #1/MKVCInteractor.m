//
//  MKVCInteractor.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import "MKVCInteractor.h"

@implementation MKVCInteractor

// Creation of this class.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ (MKVCInteractor *)interactor
{
    static MKVCInteractor *interactor = nil;
    
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

// Determines which number to return based upon which button was tapped.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (NSString *)determineNumberFromButton:(UIButton *)button
{
    if (button.tag == 1) {
        return @"0";
    }else if (button.tag == 3) {
        return @"1";
    }else if (button.tag == 4) {
        return @"2";
    }else if (button.tag == 5) {
        return @"3";
    }else if (button.tag == 6) {
        return @"4";
    }else if (button.tag == 7) {
        return @"5";
    }else if (button.tag == 8) {
        return @"6";
    }else if (button.tag == 9) {
        return @"7";
    }else if (button.tag == 10) {
        return @"8";
    }else if (button.tag == 11) {
        return @"9";
    }else {
        return nil;
    }
}

@end

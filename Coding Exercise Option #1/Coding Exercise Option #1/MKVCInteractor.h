//
//  MKVCInteractor.h
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MKVCInteractor : NSObject

// Class Method, this class can only be created 1x
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+ (MKVCInteractor *)interactor;

// Determines which number to return based upon the button tapped.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (NSNumber *)determineNumberFromButton:(UIButton *)button;

@end

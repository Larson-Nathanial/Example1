//
//  MOVCInteractorTest.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/30/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MOVCInteractor.h"

@interface MOVCInteractorTest : XCTestCase

@end

@implementation MOVCInteractorTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

// Test to ensure correct operands are returned.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)testDetermineOperand {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // Invalid Test
    button.tag = 0;
    NSString *result = [[MOVCInteractor interactor] determineOperandFromButton:button];
    XCTAssert(result == nil, @"Pass");
    
    
    // Plus Button
    button.tag = 1;
    result = [[MOVCInteractor interactor] determineOperandFromButton:button];
    XCTAssert([result isEqualToString:@"+"], @"Pass");
    
    
    // Minus Button
    button.tag = 2;
    result = [[MOVCInteractor interactor] determineOperandFromButton:button];
    XCTAssert([result isEqualToString:@"-"], @"Pass");
    
    
    // Mult. Button
    button.tag = 3;
    result = [[MOVCInteractor interactor] determineOperandFromButton:button];
    XCTAssert([result isEqualToString:@"X"], @"Pass");
    
    
    // Divide Button
    button.tag = 4;
    result = [[MOVCInteractor interactor] determineOperandFromButton:button];
    XCTAssert([result isEqualToString:@"/"], @"Pass");
    
    
    // Invalid test
    button.tag = 5;
    result = [[MOVCInteractor interactor] determineOperandFromButton:button];
    XCTAssert(result == nil, @"Pass");
}



@end

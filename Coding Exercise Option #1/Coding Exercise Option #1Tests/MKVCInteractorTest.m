//
//  MKVCInteractorTest.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/30/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MKVCInteractor.h"

@interface MKVCInteractorTest : XCTestCase

@end

@implementation MKVCInteractorTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

// Test to ensure correct operands are returned.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)testDetermineNumber {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // Invalid Test
    button.tag = 0;
    NSNumber *result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.stringValue == nil, @"Pass");
    
    
    // Return 0
    button.tag = 1;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 0, @"Pass");
    
    
    // Invalid Test
    button.tag = 2;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.stringValue == nil, @"Pass");
    
    
    // Return 1
    button.tag = 3;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 1, @"Pass");
    
    
    // Return 2
    button.tag = 4;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 2, @"Pass");
    
    
    // Return 3
    button.tag = 5;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 3, @"Pass");
    
    
    // Return 4
    button.tag = 6;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 4, @"Pass");
    
    
    // Return 5
    button.tag = 7;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 5, @"Pass");
    
    
    // Return 6
    button.tag = 8;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 6, @"Pass");
    
    
    // Return 7
    button.tag = 9;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 7, @"Pass");
    
    
    // Return 8
    button.tag = 10;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 8, @"Pass");
    
    
    // Return 9
    button.tag = 11;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.intValue == 9, @"Pass");
    
    
    // Invalid Test
    button.tag = 12;
    result = [[MKVCInteractor interactor] determineNumberFromButton:button];
    XCTAssert(result.stringValue == nil, @"Pass");
}

@end

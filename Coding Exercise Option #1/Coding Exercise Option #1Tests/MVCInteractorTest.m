//
//  MVCInteractorTest.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/30/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MVCInteractor.h"

@interface MVCInteractorTest : XCTestCase

@end

@implementation MVCInteractorTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

// Test to ensure correct calculations.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)testPerformOperation {
    
    NSString *plus = @"+";
    NSString *minus = @"-";
    NSString *mult = @"X";
    NSString *divide = @"/";
    
    NSString *highNum = @"99999";
    NSString *lowNum = @"-9999";
    NSString *dec = @"5.432";
    NSString *zero = @"0";
    
    // Add two large numbers.
    NSString *result = [[MVCInteractor interactor] performOperation:plus withFirstNumber:highNum andSecondNumber:highNum];
    XCTAssert([result isEqualToString:@"199998.00"], @"Pass");
    
    
    // Subtract two large numbers.
    result = [[MVCInteractor interactor] performOperation:minus withFirstNumber:highNum andSecondNumber:highNum];
    XCTAssert([result isEqualToString:@"0.00"], @"Pass");
    
    
    // Divide two large numbers.
    result = [[MVCInteractor interactor] performOperation:divide withFirstNumber:highNum andSecondNumber:highNum];
    XCTAssert([result isEqualToString:@"1.00"], @"Pass");
    
    
    // Mult. two zeros
    result = [[MVCInteractor interactor] performOperation:mult withFirstNumber:zero andSecondNumber:zero];
    XCTAssert([result isEqualToString:@"0.00"], @"Pass");
    
    // Add decimal to a negative.
    result = [[MVCInteractor interactor] performOperation:plus withFirstNumber:lowNum andSecondNumber:dec];
    XCTAssert([result isEqualToString:@"-9993.57"], @"Pass");

}

@end

//
//  MViewController.m
//  Coding Exercise Option #1
//
//  Created by Nathanial Larson on 4/29/15.
//  Copyright (c) 2015 Nathanial Larson. All rights reserved.
//

#import "MViewController.h"

@interface MViewController ()

@property (nonatomic) BOOL firstButtonIsSelected;

@property (nonatomic, strong) MKeyPadViewController *keyPadVC;
@property (nonatomic, strong) MOperationsViewController *operationsVC;

@end

@implementation MViewController

// Initial setup of the operations and keypad classes as well as the interactor
// for this class.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _operationsVC = [MOperationsViewController new];
    _operationsVC.mOperationsDelegate = self;
    
    _keyPadVC = [MKeyPadViewController new];
    _keyPadVC.mKeyPadDelegate = self;
    
    [MVCInteractor interactor].mVCInteractorDelegate = self;
    
    _firstButtonIsSelected = NO;
    
    [self styleAppearance];
}

// Colors, shapes etc. of the UI objects.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)styleAppearance
{
    self.view.backgroundColor = [UIColor blackColor];
    
    // Give the buttons a border.
    
    _buttonOneOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _buttonOneOutlet.layer.borderWidth = 2.0;
    _buttonOneOutlet.layer.cornerRadius = 5.0;
    
    _buttonTwoOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _buttonTwoOutlet.layer.borderWidth = 2.0;
    _buttonTwoOutlet.layer.cornerRadius = 5.0;
    
    _buttonThreeOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _buttonThreeOutlet.layer.borderWidth = 2.0;
    _buttonThreeOutlet.layer.cornerRadius = 5.0;
    
    _buttonFourOutlet.layer.borderColor = [UIColor blackColor].CGColor;
    _buttonFourOutlet.layer.borderWidth = 2.0;
    _buttonFourOutlet.layer.cornerRadius = 5.0;
    
}

// Passes the button to the interactor.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)buttonAction:(id)sender
{
    [[MVCInteractor interactor] determineActionFromButton:sender];
}

// Collects the text values from the first 3 buttons and sends them to the
// interactor for this method. (MVCInteractor.m) the result returned is then
// set in the resultLabel on the view.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (IBAction)evaluateAction:(id)sender {
    _resultLabel.text = [[MVCInteractor interactor] performOperation:_buttonTwoOutlet.titleLabel.text withFirstNumber:_buttonOneOutlet.titleLabel.text andSecondNumber:_buttonThreeOutlet.titleLabel.text];
}



#pragma MVCInteractor Delegate Methods

// Displays the KeyPad for the first button within a popover.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)displayKeyPadVCForButtonOne
{
    _firstButtonIsSelected = YES;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        _popOverContainer = [[UIPopoverController alloc] initWithContentViewController:_keyPadVC];
        
        [_popOverContainer presentPopoverFromRect:[_buttonOneOutlet bounds] inView:_buttonOneOutlet permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
    }else {
        [UIView animateWithDuration:0.5 animations:^{
            _keyPadVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height, 320.0, 240.0);
            _operationsVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height, 320.0, 240.0);
        }completion:^(BOOL finished){
            [_keyPadVC.view removeFromSuperview];
            [self.view addSubview:_keyPadVC.view];
            [UIView animateWithDuration:0.5 animations:^{
                _keyPadVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height - 240.0, 320.0, 240.0);
            }];
        }];
    }
}

// Displays the KeyPad for the third button within a popover.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)displayKeyPadVCForButtonThree
{
    _firstButtonIsSelected = NO;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        _popOverContainer = [[UIPopoverController alloc] initWithContentViewController:_keyPadVC];
        
        [_popOverContainer presentPopoverFromRect:[_buttonThreeOutlet bounds] inView:_buttonThreeOutlet permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
    }else {
        [UIView animateWithDuration:0.5 animations:^{
            _keyPadVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height, 320.0, 240.0);
            _operationsVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height, 320.0, 240.0);
        }completion:^(BOOL finished){
            [_keyPadVC.view removeFromSuperview];
            [self.view addSubview:_keyPadVC.view];
            [UIView animateWithDuration:0.5 animations:^{
                _keyPadVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height - 240.0, 320.0, 240.0);
            }];
        }];
    }
}

// Displays the Operations for the second button within a popover.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)displayOperandsVC
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        _popOverContainer = [[UIPopoverController alloc] initWithContentViewController:_operationsVC];
        
        [_popOverContainer presentPopoverFromRect:[_buttonTwoOutlet bounds] inView:_buttonTwoOutlet permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
    }else {
        [UIView animateWithDuration:0.5 animations:^{
            _keyPadVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height, 320.0, 240.0);
            _operationsVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height, 320.0, 240.0);
        }completion:^(BOOL finished){
            [_operationsVC.view removeFromSuperview];
            [self.view addSubview:_operationsVC.view];
            [UIView animateWithDuration:0.5 animations:^{
                _operationsVC.view.frame = CGRectMake((self.view.bounds.size.width - 320.0) / 2.0, self.view.bounds.size.height - 80.0, 320.0, 240.0);
            }];
        }];
    }
}

// Sets the button's titleLabel.text to nil in order to clear it.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)clearTitleForButton:(UIButton *)button
{
    button.titleLabel.text = nil;
    [button setTitle:@"" forState:UIControlStateNormal];
}

// Displays an alert if validation failed when attempting to perform the
// operation (when tapping buttonFour)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)displayValidationError:(NSString *)error
{
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Missing Information"
                                  message:error
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    
    [alert addAction:ok];
    
    [self presentViewController:alert animated:YES completion:nil];
}



#pragma MKVCInteractor Delegate Method

// Sets the number selected as the titleLabel.text of whichever button was
// pressed.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)displayNumberSelected:(NSString *)number
{
    if (_firstButtonIsSelected) {
        if (_buttonOneOutlet.titleLabel.text == nil) {
            [_buttonOneOutlet setTitle:number forState:UIControlStateNormal];
        }else {
            if (!(_buttonOneOutlet.titleLabel.text.length > 5)) {
                [_buttonOneOutlet setTitle:[_buttonOneOutlet.titleLabel.text stringByAppendingString:number] forState:UIControlStateNormal];
            }
        }
    }else {
        if (_buttonThreeOutlet.titleLabel.text == nil) {
            [_buttonThreeOutlet setTitle:number forState:UIControlStateNormal];
        }else {
            if (!(_buttonThreeOutlet.titleLabel.text.length > 5)) {
                [_buttonThreeOutlet setTitle:[_buttonThreeOutlet.titleLabel.text stringByAppendingString:number] forState:UIControlStateNormal];
            }
        }
    }
}



#pragma MOVCInteractor Delegate Method

// Sets the operand as the titleLabel.text of buttonTwo
// that was selected from the popover displayed when tapping
// buttonTwo.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (void)displayOperand:(NSString *)operand
{
    [_buttonTwoOutlet setTitle:operand forState:UIControlStateNormal];
}

// Disable Autorotate for iPhone only.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- (BOOL)shouldAutorotate
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return YES;
    }
    return NO;
}

@end

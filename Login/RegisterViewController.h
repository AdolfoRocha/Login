//
//  RegisterViewController.h
//  Login
//  This class is to represent the Register Scene on the storyboard
//  and controller for the STATIC table view
//  Created by Lam Lu on 2/19/13.
//  Copyright (c) 2013 Lam Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UITableViewController




@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;


// action listener for register button
- (IBAction)registerButtonClicked:(id)sender;

// dismiss the keyboard when return button is hit
- (IBAction) textFieldFinishedWithKeyBoard:(id)sender;
@end

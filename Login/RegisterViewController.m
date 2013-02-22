//
//  RegisterViewController.m
//  Login
//
//  Created by Lam Lu on 2/19/13.
//  Copyright (c) 2013 Lam Lu. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController


/*
 *  Default inititial code 
 */
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
 * Default action when a row is selected 
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d", indexPath.section);
    NSLog(@"%d", indexPath.row);
   
        
    //this is to implement the delegation to textbox when the user tap anywhere in the cell row
    //if the username cell is selected
    if (indexPath.section == 0 && indexPath.row == 0)
    {
        [self.usernameTextField becomeFirstResponder];
    }
    
    //the password cell is selected
    else if (indexPath.section == 0 && indexPath.row == 1)
        [self.passwordTextField becomeFirstResponder];
        
}

- (void)viewDidUnload {
    [self setPasswordTextField:nil];
    [self setUsernameTextField:nil];
    [super viewDidUnload];
}

/*
 * Action listener for registerButton
 */

- (IBAction)registerButtonClicked:(id)sender
{
    NSString * username = self.usernameTextField.text;
    NSString * password = self.passwordTextField.text;
    
    if (username.length == 0)
        NSLog (@"Empty Username");
    else
        NSLog (@"%@", username);
        
    if (password.length == 0)
        NSLog (@"Empty password");
    else
        NSLog (@"%@", password);
}

/*
 * Dissmis the keyboard when the return button is pressed
 * Connect this function to Did End on Exit of the text field from 
 * storyboard
 * @param sender, the textfield responder
 */
- (IBAction) textFieldFinishedWithKeyBoard:(id)sender {
    [sender resignFirstResponder];
}

@end

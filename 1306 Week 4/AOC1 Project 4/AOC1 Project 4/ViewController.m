//
//  ViewController.m
//  AOC1 Project 4
//
//  Created by Tim Cook on 6/27/13.
//  Copyright (c) 2013 Tim Cook. All rights reserved.
//

#import "ViewController.h"

//defining buttons for onClick
#define DATE_BUTTON 0
#define INFO_BUTTON 1
#define LOGIN_BUTTON 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
//add label for the input field
    inputLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 10.0f, 85.0f, 30.0f)];
    if (inputLabel != nil) {
        inputLabel.text = @"Username:";
        
        [self.view addSubview:inputLabel];
    }
    
//create an input field for the user the type in there username
    inputField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 14.0f, 200.0f, 30.0f)];
    if (inputField != nil) {
        inputField.borderStyle = UITextBorderStyleRoundedRect;
        
        [self.view addSubview:inputField];
    }
    
//create a button that links with the input field and takes the text within and displays it below
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.tag = LOGIN_BUTTON;
        loginButton.frame = CGRectMake(230.0f, 60.0f, 80.0f, 30.0f);
        
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginButton];
    }
    
//a text field that displays the username inputed from the text field and triggered by the login button
    usernameDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
    if (usernameDisplay != nil) {
        
        usernameDisplay.text = @"Please Enter Username";
        usernameDisplay.textAlignment = NSTextAlignmentCenter;
        usernameDisplay.backgroundColor = [UIColor lightGrayColor];
        usernameDisplay.textColor = [UIColor blueColor];
        usernameDisplay.numberOfLines = 2;
        
        [self.view addSubview:usernameDisplay];
    }
    
//creates an info button that will display a text box below
    info = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (info != nil) {
        info.frame = CGRectMake(10.0f, 300.0f, 30.0f, 30.0f);
        info.tag = INFO_BUTTON;
        [info addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:info];
    }
    
//creates the text box that is triggered by the info button
    aboutMe = [[UILabel alloc] initWithFrame:CGRectMake(30.0f, 340.0f, 260.0f, 70.0f)];
    if (aboutMe != nil) {
        aboutMe.textAlignment = NSTextAlignmentLeft;
        aboutMe.textColor = [UIColor blueColor];
        aboutMe.numberOfLines = 2;
        [self.view addSubview:aboutMe];
    }
    
//a button that calls an alert the tells the current date and time
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil) {
        showDate.frame = CGRectMake(20.0f, 200.0f, 120.0f, 30.0f);
        showDate.tag = DATE_BUTTON;
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:showDate];
    }
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

//create a click action for each button on the page and preforms an action
- (void)onClick:(UIButton *)button {
    switch (button.tag) {
            
    //alerts the current date when the "Show Date" button is clicked
        case DATE_BUTTON:
        {
        //converts the date code into something easy to read by the user
            date = [NSDate date];
            dateLabel = [[NSString alloc] init];
            NSDateFormatter  *dateFormatter = [[NSDateFormatter alloc] init];
            if (dateFormatter != nil) {
                [dateFormatter setDateFormat:@"MMMM dd, yyyy h:mm:ss a zzzz"];
                dateLabel = [dateFormatter stringFromDate:date];
            }
            
            UIAlertView *displayDate = [[UIAlertView alloc] initWithTitle:@"Date" message:dateLabel delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            if (displayDate != nil) {
                [displayDate show];
            }
        }
            
        break;
            
    //displays text when the info button is clicked
        case INFO_BUTTON:
        {
            aboutMe.text = @"This application was created by: Tim Cook";
        }
            
        break;
            
    //displays text when the login button is clicked
    //if there is text in the input field then is displays the username
    //if there is no text then it tells the user to try again
        case LOGIN_BUTTON:
        {
            NSString *username = [inputField text];
            if (username.length > 0) {
                usernameDisplay.text = [NSString stringWithFormat:@"User: %@ has been logged in", username];
                [inputField resignFirstResponder];
            } else {
                usernameDisplay.text = @"Username cannot be empty";
            }
        }
            
        break;
        default:
        break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

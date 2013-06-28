//
//  ViewController.h
//  AOC1 Project 4
//
//  Created by Tim Cook on 6/27/13.
//  Copyright (c) 2013 Tim Cook. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    
//define my variables to be used in my main code
    
    UILabel *inputLabel;
    UITextField *inputField;
    UIButton *loginButton;
    UILabel *usernameDisplay;
    UIButton *showDate;
    NSDate *date;
    NSString *dateLabel;
    UIButton *info;
    UILabel *aboutMe;
}

- (void)onClick:(UIButton *)button;

@end

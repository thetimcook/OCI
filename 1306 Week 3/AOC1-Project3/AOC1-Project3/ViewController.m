//
//  ViewController.m
//  AOC1-Project3
//
//  Created by Tim Cook on 6/19/13.
//  Copyright (c) 2013 Tim Cook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //append to a new alert
    NSString *returnTheEnd = [self Append:@"The" stringEnd:@" End"];
    [self DisplayAlertWithString:returnTheEnd];
    
    //display added numbers for the meaning of life
    NSString *meaningOfLife = @"The number is 00";
    int addNumbers = [self Add:6 NumberTwo:7];
    
    NSString *numberToString = [NSString stringWithFormat:@"%i", addNumbers];
    NSMutableString *AddText = [[NSMutableString alloc] init];
    [AddText appendString:meaningOfLife];
    
    NSRange range = NSMakeRange(15, 2);
    [AddText replaceCharactersInRange:range withString:numberToString];
    [self DisplayAlertWithString:AddText];
    
    //compare two numbers and display an alart
    int compareThis = 2;
    int compareThat = 3;
    
    BOOL returnBool = [self Compare:compareThis compareThat:compareThat];
    NSString *compareAlert;
    
    compareAlert = [NSString stringWithFormat:@"%i and %i %@ equal!", compareThis, compareThat, returnBool ? @"are" : @"are not"];
    
    [self DisplayAlertWithString:compareAlert];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//add NumberOne with NumberTwo to get the final number to display to the alert
- (int)Add:(NSInteger)NumberOne NumberTwo:(NSInteger)NumberTwo

{
    return NumberOne + NumberTwo;
}

//setup the compare function and compare the two numbers and return a BOOL
- (BOOL)Compare:(NSInteger)compareThis compareThat:(NSInteger)compareThat

{
    if (compareThis == compareThat) {
        return YES;
    } else {
        return NO;
    }
}

//setup the string function and append the two strings together
- (NSString *)Append:(NSString *)stringThe stringEnd:(NSString *)stringEnd

{
    NSMutableString *theEnd = [[NSMutableString alloc] init];
    [theEnd appendString:stringThe];
    [theEnd appendString:stringEnd];
    
    return theEnd;
}

//setup the alert by creating a UIAlertView function
- (void)DisplayAlertWithString:(NSString *)alertString

{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:alertString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil) {
        [alertView show];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

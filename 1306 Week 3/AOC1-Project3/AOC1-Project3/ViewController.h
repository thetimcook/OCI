//
//  ViewController.h
//  AOC1-Project3
//
//  Created by Tim Cook on 6/19/13.
//  Copyright (c) 2013 Tim Cook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

//define variables
- (int)Add:(NSInteger)NumberOne NumberTwo:(NSInteger)NumberTwo;
- (BOOL)Compare:(NSInteger)compareThis compareThat:(NSInteger)compareThat;
- (NSString *)Append:(NSString *)stringThe stringEnd:(NSString *)stringEnd;
- (void)DisplayAlertWithString:(NSString *)alertString;

@end

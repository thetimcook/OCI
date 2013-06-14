//
//  ViewController.m
//  SingleViewProject
//
//  Created by Tim Cook on 6/14/13.
//  Copyright (c) 2013 Tim Cook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated
{
    //Create full width header with book title
    header = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
                     if (header != nil ) {
                         header.textColor = [UIColor whiteColor];
                         header.textAlignment = NSTextAlignmentCenter;
                         header.backgroundColor = [UIColor colorWithRed:0.204 green:0.22 blue:0.22 alpha:1];
                         header.text  = @"Manage Your Day-to-Day";
                     }
    //Create text block with the author label and justify right
    author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 100.0f, 20.0f)];
    if (author != nil) {
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor colorWithRed:0.07 green:0.07 blue:0.07 alpha:1];
        author.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
        author.text = @"Author:";
    }
    //Create text block with the author and justify left
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 40.0f, 220.0f, 20.0f)];
    if (authorName != nil) {
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor colorWithRed:0.06 green:0.06 blue:0.06 alpha:1];
        authorName.backgroundColor = [UIColor colorWithRed:0.796 green:0.859 blue:0.878 alpha:1] /*#cbdbe0*/;
        authorName.text = @"Jocelyn K. Glei";
    }
    //Create text block with the publish date label and justify right
    published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 70.0f, 100.0f, 20.0f)];
    if (published != nil) {
        published.textAlignment = NSTextAlignmentRight;
        published.textColor = [UIColor colorWithRed:0.05 green:0.05 blue:0.05 alpha:1];
        published.backgroundColor = [UIColor colorWithRed:.999 green:.999 blue:.999 alpha:1];
        published.text = @"Published:";
    }
    //Create text block with the published date and justify left
    date = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 70.0f, 220.0f, 20.0f)];
    if (date != nil) {
        date.textAlignment = NSTextAlignmentLeft;
        date.textColor = [UIColor colorWithRed:0.04 green:0.04 blue:0.04 alpha:1];
        date.backgroundColor = [UIColor colorWithRed:0.863 green:0.91 blue:0.922 alpha:1] /*#dce8eb*/;
        date.text = @"May 21, 2013";
    }
    //Create text block for the summary label and justity left
    summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 100.0f, 20.0f)];
    if (summary != nil) {
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor colorWithRed:0.03 green:0.03 blue:0.03 alpha:1];
        summary.backgroundColor = [UIColor colorWithRed:.998 green:.998 blue:.998 alpha:1];
        summary.text = @"Summary:";
    }
    //Create a large text block for the summary text with multiple lines and center text
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 320.0f, 200.0f)];
    if (summaryText != nil) {
        summaryText.textAlignment = NSTextAlignmentCenter;
        summaryText.textColor = [UIColor colorWithRed:0.02 green:0.02 blue:0.02 alpha:1];
        summaryText.backgroundColor = [UIColor colorWithRed:0.925 green:0.945 blue:0.949 alpha:1] /*#ecf1f2*/;
        summaryText.font = [UIFont systemFontOfSize:13.5];
        summaryText.numberOfLines = 9;
        summaryText.text = @"Are you over-extended, over-distracted, and overwhelmed? Do you work at a breakneck pace all day, only to find that you haven’t accomplished the most important things on your agenda when you leave the office? The world has changed and the way we work has to change, too. With wisdom from 20 leading creative minds, Manage Your Day-to-Day will give you a toolkit for tackling the new challenges of a 24/7, always-on workplace.";
    }
    //Create text block for featured people label and justify left
    charactersTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 340.0f, 220.0f, 20.0f)];
    if (charactersTitle != nil) {
        charactersTitle.textAlignment = NSTextAlignmentLeft;
        charactersTitle.textColor = [UIColor colorWithRed:0.01 green:0.01 blue:0.01 alpha:1];
        charactersTitle.backgroundColor = [UIColor colorWithRed:.997 green:.997 blue:.997 alpha:1];
        charactersTitle.text = @"Featuring contributions from:";
    }
    //loop through the array and apply commas and an "and" for the last string
    NSString *characterList[6] = {@"Dan Ariely", @"Leo Babauta", @"Scott Belsky", @"Lori Deschene", @"Aaron Dignan", @"many more"};

    NSArray *characterArr = [NSArray arrayWithObjects:characterList count:6];

    NSMutableString *characterText = [[NSMutableString alloc] init];

    for (int i = 0; i < [characterArr count]; i ++) {
        
        [characterText appendString:[characterArr objectAtIndex:i]];
        
        if (i == 5) {
            [characterText appendString:@""];
        }else if (i == 4) {
            [characterText appendString:@", and "];
        } else {
            [characterText appendString:@", "];
        }
    }
    //Create the text block for the list of featured people and center
    characters = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 370.0f, 320.0f, 80.0f)];
    if (characters != nil) {
        characters.textAlignment = NSTextAlignmentCenter;
        characters.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
        characters.backgroundColor = [UIColor colorWithRed:0.969 green:0.976 blue:0.996 alpha:1] /*#f7f9fe*/;
        characters.numberOfLines = 3;
        characters.text = characterText;
    }
    
    //apply the elements to the page
    [self.view addSubview:header];
    [self.view addSubview:author];
    [self.view addSubview:authorName];
    [self.view addSubview:published];
    [self.view addSubview:date];
    [self.view addSubview:summary];
    [self.view addSubview:summaryText];
    [self.view addSubview:charactersTitle];
    [self.view addSubview:characters];
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

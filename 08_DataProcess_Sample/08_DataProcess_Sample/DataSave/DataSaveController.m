//
//  DataSaveController.m
//  08_DataProcess_Sample
//
//  Created by 신 영호 on 11. 10. 24..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import "DataSaveController.h"

@implementation DataSaveController

@synthesize m_inputText, m_summitBtn, m_outputLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
   // [[NSUserDefaults standardUserDefaults] synchronize];  동기화
    m_outputLabel.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"inputText"]; // 뽑아오는거임
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    m_inputText = nil;
    m_outputLabel = nil;
    m_summitBtn = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction)SummitBtn:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setValue:[m_inputText text] forKey:@"inputText"];
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil 
                                                     message:@"저장완료" 
                                                    delegate:nil 
                                           cancelButtonTitle:nil 
                                           otherButtonTitles:@"확인", nil];
    
    [alert show];
    
}













@end

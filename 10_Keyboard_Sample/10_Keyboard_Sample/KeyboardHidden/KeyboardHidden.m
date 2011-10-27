//
//  KeyboardHidden.m
//  10_Keyboard_Sample
//
//  Created by 신 영호 on 11. 10. 24..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import "KeyboardHidden.h"

@implementation KeyboardHidden

@synthesize m_textView, m_doneBtn;


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
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    m_textView = nil;
    m_doneBtn = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma - My Function

-(IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}


-(IBAction)DoneBtn:(id)sender{
    
    [m_textView resignFirstResponder];
    
}

@end

















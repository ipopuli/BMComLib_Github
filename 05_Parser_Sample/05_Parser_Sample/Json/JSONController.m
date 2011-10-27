//
//  JSONController.m
//  05_Parser_Sample
//
//  Created by 신 영호 on 11. 10. 25..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import "JSONController.h"
#import "ASIHTTPRequest.h"
#import "SBJSON.h"

@implementation JSONController

@synthesize m_textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc
{
    [self setM_textView:nil];
    
    [super dealloc];
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
    
    [self JSONParser];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    m_textView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(void)JSONParser
{
    NSString *str_url = [NSString stringWithFormat:@"http://maps.google.com/maps/geo?q=37.493047,127.040537&output=json&sensor=false"];
    
    NSString * str_UTFURL = [str_url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL *url = [NSURL URLWithString: str_UTFURL];
    
    ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:url];
    
    [request setDelegate:self];
    [request startSynchronous];
    
}


-(void)requestFinished:(ASIHTTPRequest*) request{
    
    NSString *jsonString = [[NSString alloc]initWithData:[request responseData] encoding:NSUTF8StringEncoding];
    
    m_textView.text = jsonString;
}


-(void)requestFailed:(ASIHTTPRequest*) request{
    
    NSLog(@"실패");
}

























@end

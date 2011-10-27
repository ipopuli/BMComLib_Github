//
//  FileDownloadController.m
//  04_Network_Sample
//
//  Created by 신 영호 on 11. 10. 25..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import "FileDownloadController.h"
#import "ASIHTTPRequest.h"
#import "Reachability.h"


@implementation FileDownloadController

@synthesize m_filePath;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc{
    
    [self setM_filePath:nil];
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
    
    [self Filedown];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




-(void)Filedown{
    
    ASIHTTPRequest * request;
    NSString * download_url = [[NSString alloc] initWithFormat:@"http://raploa.com/16/2/u1017-.exe"];
    NSURL *url = [NSURL URLWithString:download_url];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *downFilePath = [documentsDirectory stringByAppendingPathComponent:@"울트라서프 10.17.exe"];
    
    request = [ASIHTTPRequest requestWithURL:url];
    
    [request setDownloadDestinationPath:downFilePath];
    [request setTemporaryFileDownloadPath: [documentsDirectory stringByAppendingPathComponent:@"Temp.temp"]];
    [request setAllowResumeForFileDownloads:YES];
    
    [request setDidStartSelector:@selector(DidStarted:)];
    [request setDidFinishSelector:@selector(DidFinished:)];
    [request setDidFailSelector:@selector(DidFailed:)];
    
    [request setDelegate:self];
    [request startAsynchronous];
    
    [download_url release];
}

-(void)DidStarted:(ASIHTTPRequest*)request{
    
    NSLog(@"다운시작");
    self.m_filePath.text = @"다운중";
}


-(void)DidFinished:(ASIHTTPRequest*)request{
    NSLog(@"다운완료");
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSArray * fileList = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:documentsDirectory error:nil];
    
    self.m_filePath.text = [documentsDirectory stringByAppendingPathComponent: [fileList objectAtIndex:0]];
}


-(void)DidFailed:(ASIHTTPRequest*)request{
    
    NSLog(@"다운실패");
}

























@end

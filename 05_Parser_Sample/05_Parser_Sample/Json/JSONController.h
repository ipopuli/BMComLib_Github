//
//  JSONController.h
//  05_Parser_Sample
//
//  Created by 신 영호 on 11. 10. 25..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSONController : UIViewController
{
    UITextView * m_textView;
    
    
}

@property(nonatomic, retain) IBOutlet UITextView * m_textView;

-(void)JSONParser;

@end

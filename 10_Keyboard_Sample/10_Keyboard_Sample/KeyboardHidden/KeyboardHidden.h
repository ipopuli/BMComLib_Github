//
//  KeyboardHidden.h
//  10_Keyboard_Sample
//
//  Created by 신 영호 on 11. 10. 24..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyboardHidden : UIViewController
{
    UITextField * m_textView;
    UIButton * m_doneBtn;
    
}

@property(nonatomic, retain) IBOutlet UITextField * m_textView;
@property(nonatomic, retain) IBOutlet UIButton * m_doneBtn;


-(IBAction) textFieldDoneEditing:(id)sender;
-(IBAction) DoneBtn:(id)sender;

@end

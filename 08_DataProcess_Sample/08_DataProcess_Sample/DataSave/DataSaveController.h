//
//  DataSaveController.h
//  08_DataProcess_Sample
//
//  Created by 신 영호 on 11. 10. 24..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataSaveController : UIViewController{
    
    UILabel * m_outputLabel;
    UITextField * m_inputText;
    UIButton * m_summitBtn;
}

@property(nonatomic, retain) IBOutlet UILabel * m_outputLabel;
@property(nonatomic, retain) IBOutlet UITextField * m_inputText;
@property(nonatomic, retain) IBOutlet UIButton * m_summitBtn;


-(IBAction)SummitBtn:(id)sender;

@end

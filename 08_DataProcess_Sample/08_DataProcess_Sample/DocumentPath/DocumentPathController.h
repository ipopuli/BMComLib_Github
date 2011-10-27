//
//  DocumentPathController.h
//  08_DataProcess_Sample
//
//  Created by 신 영호 on 11. 10. 24..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DocumentPathController : UIViewController{
    
    UILabel * m_outputLabel;
    UIButton * m_documentBtn;
}

@property(nonatomic, retain) IBOutlet UILabel * m_outputLabel;
@property(nonatomic, retain) IBOutlet UIButton * m_documentBtn;

-(IBAction)DocumentBtn:(id)sender;


@end

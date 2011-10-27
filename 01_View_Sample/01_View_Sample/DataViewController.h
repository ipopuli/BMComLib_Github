//
//  DataViewController.h
//  01_View_Sample
//
//  Created by 신 영호 on 11. 10. 19..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController :UIViewController 
{
    IBOutlet UIButton * picker;
}

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;

@property (strong, nonatomic) id dataObject;

@property(retain, nonatomic) IBOutlet UIButton *picker;

-(IBAction)PickerBtn:(id)sender;

@end

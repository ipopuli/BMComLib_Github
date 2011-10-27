//
//  PickerView.h
//  01_View_Sample
//
//  Created by 신 영호 on 11. 10. 20..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerView : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
    IBOutlet UIPickerView * picker;
    
    NSArray * m_pickerData;
}

@property(retain, nonatomic) IBOutlet UIPickerView * picker;
@property(retain, nonatomic) NSArray * m_pickerData;


@end

//
//  DataViewController.h
//  08_DataProcess_Sample
//
//  Created by 신 영호 on 11. 10. 19..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController
{
}


@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@property (nonatomic, assign) NSMutableArray *yourArray;

@end

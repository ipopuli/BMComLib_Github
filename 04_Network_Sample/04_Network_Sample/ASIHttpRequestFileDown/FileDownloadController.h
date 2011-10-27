//
//  FileDownloadController.h
//  04_Network_Sample
//
//  Created by 신 영호 on 11. 10. 25..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileDownloadController : UIViewController
{
    UILabel * m_filePath;
}

@property(nonatomic, retain) IBOutlet UILabel * m_filePath;

-(void) Filedown;
@end

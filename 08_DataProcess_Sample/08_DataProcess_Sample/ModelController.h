//
//  ModelController.h
//  08_DataProcess_Sample
//
//  Created by 신 영호 on 11. 10. 19..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>
- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;
@end

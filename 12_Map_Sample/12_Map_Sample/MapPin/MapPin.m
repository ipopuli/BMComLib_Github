//
//  MapPin.m
//  12_Map_Sample
//
//  Created by 신 영호 on 11. 10. 20..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//


#import "MapPin.h"

@implementation Pin
@synthesize coordinate, title, subtitle, imgPath, dealIndex, isNow;

-(void)dealloc{
    //[title release];
    //[subtitle release];
    //[imgPath release];
    //[super dealloc];
}

@end

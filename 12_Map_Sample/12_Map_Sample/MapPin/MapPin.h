//
//  MapPin.h
//  12_Map_Sample
//
//  Created by 신 영호 on 11. 10. 20..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface Pin : NSObject <MKAnnotation > {
    
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    NSString *imgPath;
	NSInteger dealIndex;
	BOOL isNow;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, copy) NSString *imgPath;
@property (nonatomic, readwrite) NSInteger dealIndex;
@property (nonatomic, readwrite) BOOL isNow;

@end
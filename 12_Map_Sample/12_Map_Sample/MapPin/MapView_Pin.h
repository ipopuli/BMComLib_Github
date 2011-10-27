//
//  MapView_Pin.h
//  12_Map_Sample
//
//  Created by 신 영호 on 11. 10. 20..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


@interface MapView_Pin : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>
{
    IBOutlet MKMapView *mapView;
    CLLocationManager *locationManager;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) CLLocationManager *locationManager;


@end

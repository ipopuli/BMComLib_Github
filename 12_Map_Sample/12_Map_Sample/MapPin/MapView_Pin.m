//
//  MapView_Pin.m
//  12_Map_Sample
//
//  Created by 이 석재 on 11. 10. 20..
//  Copyright (c) 2011 UBIVELOX/MB. All rights reserved.
//

#import "MapView_Pin.h"
#import "MapPin.h"

@implementation MapView_Pin

@synthesize mapView,locationManager;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mapView.showsUserLocation = YES;
    
    NSString* la = @"37.5";
    NSString* lo = @"126.9";
    NSString* la2 = @"37.5";
    NSString* lo2 = @"126.91";
    
    
    NSDictionary * pinInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                              la,@"la", lo,@"lo", 
                              
                              nil];
    NSDictionary * pinInfo2 = [NSDictionary dictionaryWithObjectsAndKeys:
                              la2,@"la", lo2,@"lo", 
                              
                              nil];
    NSMutableArray * mapInfo = [[NSMutableArray alloc] init];
    [mapInfo addObject:pinInfo];
    [mapInfo addObject:pinInfo2];
    
    //핀박기
    for (int i=0; i<2; i++) {
        
    
        Pin *pin=[[Pin alloc] init];;
        CLLocationCoordinate2D center;
    
        center.latitude = [[[mapInfo objectAtIndex:i] objectForKey:@"la"]floatValue] ;
        center.longitude = [[[mapInfo objectAtIndex:i] objectForKey:@"lo"]floatValue] ;
        
        pin.title = @"임시좌표";
        pin.subtitle = @"임시";
        pin.coordinate = center;
		pin.dealIndex = i;
        
        [mapView addAnnotation:pin];
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark MKMapView delegate
- (MKAnnotationView *)mapView:(MKMapView *)aMapView viewForAnnotation:(id <MKAnnotation>)annotation {
    static NSString *placeMarkIdentifier = @"my annotation identifier";
    
    if ([annotation isKindOfClass:[Pin class]]) {
        MKAnnotationView *annotationView = 
        (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:placeMarkIdentifier];
        
        if (annotationView == nil) {
            annotationView = 
            [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:placeMarkIdentifier];
            
            annotationView.canShowCallout = YES;
			UIButton *rightCalloutButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
			[rightCalloutButton addTarget:self action:@selector(onClickRightCalloutBtn:) forControlEvents:UIControlEventTouchUpInside];
			annotationView.rightCalloutAccessoryView = rightCalloutButton;
        } else {
            annotationView.annotation = annotation;
		}
		
        annotationView.image = [UIImage imageNamed:@"pin_w_31x29.png"];
        
        return annotationView;
    }
    return nil;
}


- (void)onClickRightCalloutBtn:(UIButton *)btn;
{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:nil 
                                                     message:@"클릭" 
                                                    delegate:nil 
                                           cancelButtonTitle:nil 
                                           otherButtonTitles:@"확인", nil];
    
    [alert show];
}




#pragma mark MKMapView delegate

- (void)mapViewWillStartLocatingUser:(MKMapView *)mapView
{
    //[self NowLocaBtnClick];
}
- (void)mapView:(MKMapView *)_mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region;
    region.center = userLocation.location.coordinate;
    region.span.latitudeDelta = 0.01;
    region.span.longitudeDelta = 0.01;
    [mapView setRegion:region animated:YES];
        
     
}


@end

//
//  WCViewController.m
//  WillChilcuttMapKitHomework
//
//  Created by Will Chilcutt on 3/14/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import "WCViewController.h"

@implementation WCViewController
@synthesize mapView;
@synthesize orlando = _orlando;
@synthesize anaheim = _anaheim;
@synthesize paris = _paris;
@synthesize shanghai = _shangai;
@synthesize hk = _hk;
@synthesize tokyo = _tokyo;

- (IBAction)buttonPressed:(id)sender 
{
    NSString *buttonLabel = [sender currentTitle];
    CLLocationCoordinate2D newCenter;
    
    if ([buttonLabel isEqualToString:@"Orlando"]) {
        newCenter=self.orlando.coordinate;
    }else if ([buttonLabel isEqualToString: @"Anaheim"]) {
        newCenter=self.anaheim.coordinate;
    }else if ([buttonLabel isEqualToString: @"Paris"]) {
        newCenter=self.paris.coordinate;
    }else if ([buttonLabel isEqualToString: @"Shanghai"]) {
        newCenter=self.shanghai.coordinate;
    }else if ([buttonLabel isEqualToString: @"HK"]) {
        newCenter=self.hk.coordinate;
    }else if ([buttonLabel isEqualToString: @"Tokyo"]) {
        newCenter=self.tokyo.coordinate;
    }
    
    MKCoordinateRegion newRegion;
    newRegion.center = newCenter;
    newRegion.span.latitudeDelta = 0.01;
    newRegion.span.longitudeDelta = 0.01;
    
    MKCoordinateRegion fittedRegion;
    
    fittedRegion = [self.mapView regionThatFits:newRegion];
    
    [self.mapView setRegion:fittedRegion animated:YES];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.orlando =[[DisneyLocation alloc] initWithCoordinate:CLLocationCoordinate2DMake(28.419433, -81.581228) andTitle:@"Cinderlla's Castle" andSubtitle:@"Orlando, FL"];
    [self.mapView addAnnotation:self.orlando];
    
    self.anaheim  =[[DisneyLocation alloc]initWithCoordinate:CLLocationCoordinate2DMake(33.81284, -117.918964) andTitle:@"Sleeping Beauty's Castle" andSubtitle:@"Anaheim, CA"];
    [self.mapView addAnnotation:self.anaheim];

    self.paris  =[[DisneyLocation alloc]initWithCoordinate:CLLocationCoordinate2DMake(48.873176, 2.776021) andTitle:@"Sleeping Beauty's Castle" andSubtitle:@"Marne-la-Vallee, France"];
    [self.mapView addAnnotation:self.paris];

    self.shanghai  =[[DisneyLocation alloc]initWithCoordinate:CLLocationCoordinate2DMake(31.222224, 121.545271) andTitle:@"Enchanted Storybook Castle" andSubtitle:@"Pudong, Shanghai, China"];
    [self.mapView addAnnotation:self.shanghai];

    self.hk  =[[DisneyLocation alloc]initWithCoordinate:CLLocationCoordinate2DMake(22.312639, 114.041095) andTitle:@"Sleeping Beauty's Castle" andSubtitle:@"Hong Kong, China"];
    [self.mapView addAnnotation:self.hk];

    self.tokyo  =[[DisneyLocation alloc]initWithCoordinate:CLLocationCoordinate2DMake(35.632206, 139.880772) andTitle:@"Cinderella's Castle" andSubtitle:@"Urayasu, Chiba, Japan"];
    [self.mapView addAnnotation:self.tokyo];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

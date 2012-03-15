//
//  WCViewController.h
//  WillChilcuttMapKitHomework
//
//  Created by Will Chilcutt on 3/14/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DisneyLocation.h"

@interface WCViewController : UIViewController
{
    DisneyLocation *orlando;
    DisneyLocation *anaheim;
    DisneyLocation *paris;
    DisneyLocation *shanghai;
    DisneyLocation *hk;
    DisneyLocation *tokyo;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) DisneyLocation *orlando;
@property (strong, nonatomic) DisneyLocation *anaheim;
@property (strong, nonatomic) DisneyLocation *paris;
@property (strong, nonatomic) DisneyLocation *shanghai;
@property (strong, nonatomic) DisneyLocation *hk;
@property (strong, nonatomic) DisneyLocation *tokyo;

@end

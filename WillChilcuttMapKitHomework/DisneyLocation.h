//
//  DisneyLocation.h
//  WillChilcuttMapKitHomework
//
//  Created by Will Chilcutt on 3/14/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface DisneyLocation : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *subtitle;

-(id) initWithCoordinate:(CLLocationCoordinate2D)newCoordinate 
                andTitle:(NSString *)newTitle 
             andSubtitle:(NSString *)newSubtitle;

@end

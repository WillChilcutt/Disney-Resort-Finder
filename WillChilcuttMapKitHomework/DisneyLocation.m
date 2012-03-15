//
//  DisneyLocation.m
//  WillChilcuttMapKitHomework
//
//  Created by Will Chilcutt on 3/14/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import "DisneyLocation.h"


@implementation DisneyLocation 
@synthesize coordinate = _coordinate;
@synthesize title = _title;
@synthesize subtitle = _subtitle;

-(id) initWithCoordinate:(CLLocationCoordinate2D)newCoordinate 
                andTitle:(NSString *)newTitle 
             andSubtitle:(NSString *)newSubtitle;
{
    self = [self init];
    
    _coordinate = newCoordinate;
    _title = newTitle;
    _subtitle = newSubtitle;
    
    return self;
}

@end

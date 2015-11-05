//
//  RestaurantIndexController.m
//  Tabbed
//
//  Created by Suman Roy on 05/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "RestaurantIndexController.h"

@implementation RestaurantIndexController

+(id)getRestaurantIndexController{
    
    static RestaurantIndexController *_sharedInstance = nil;
    
    // 2
    static dispatch_once_t oncePredicate;
    
    // 3
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[RestaurantIndexController alloc] init];
    });
    
    return _sharedInstance;

}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        Restaurant *tempRest1 = [[ Restaurant alloc ] init];
        
        tempRest1.name = @"Rest 1";
        tempRest1.imagePath = @"logo_Rest1.jpg";
        
        Restaurant *tempRest2 = [[ Restaurant alloc ] init];
        
        tempRest2.name = @"Rest 2";
        tempRest2.imagePath = @"logo_Rest2.jpg";
        
        Restaurant *tempRest3 = [[ Restaurant alloc ] init];
        
        tempRest3.name = @"Rest 3";
        tempRest3.imagePath = @"logo_Rest3.jpg";
        
        _restaurantIndex = [ NSArray arrayWithObjects:tempRest1,
                                                      tempRest2,
                                                      tempRest3,
                                                      nil];
        
    }
    return self;
}
@end

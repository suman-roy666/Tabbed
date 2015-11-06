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
        tempRest1.menu = [ NSArray arrayWithObjects:[ NSArray arrayWithObjects:@"Starters", @"Something Fried", @"Something Grilled", nil ],
                                                    [ NSArray arrayWithObjects:@"Main Course",@"A Dal",@"Some Roti",@"And the other stuff", nil ],
                                                    [ NSArray arrayWithObjects:@"Desserts", @"A cake", @"Something sweet", nil ]
                                                    ,nil ];
        
        Restaurant *tempRest2 = [[ Restaurant alloc ] init];
        
        tempRest2.name = @"Rest 2";
        tempRest2.imagePath = @"logo_Rest2.jpg";
        tempRest2.menu = [ NSArray arrayWithObjects:[ NSArray arrayWithObjects:@"Beverages", @"Pepsi", @"Sgt Peppers", nil ],
                                                    [ NSArray arrayWithObjects:@"Combos", @"Combo 1", @"Combo 2", @"Combo 3", nil ],
                                                    [ NSArray arrayWithObjects:@"Extras", @"Paninios", @"The wierd foreign item", nil ]
                                                    ,nil ];

        
        Restaurant *tempRest3 = [[ Restaurant alloc ] init];
        
        tempRest3.name = @"Rest 3";
        tempRest3.imagePath = @"logo_Rest3.jpg";
        tempRest3.menu = [ NSArray arrayWithObjects: [ NSArray arrayWithObjects:@"Combos", @"Combo 1", @"Combo 2", @"Combo 3", nil ],
                                                     [ NSArray arrayWithObjects:@"Extras", @"Paninios", @"The wierd foreign item", nil ],
                                                     [ NSArray arrayWithObjects:@"Beverages", @"Pepsi", @"Sgt Peppers", nil ],
                                                     nil ];
        
        _restaurantIndex = [ NSArray arrayWithObjects:tempRest1,
                                                      tempRest2,
                                                      tempRest3,
                                                      nil];
        
        _item = [[ NSString alloc] initWithString:@"" ];
        
    }
    return self;
}
@end

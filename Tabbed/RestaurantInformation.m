//
//  RestaurantInformation.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "RestaurantInformation.h"

@implementation RestaurantInformation

+ (id)getSharedInstance{
    
    static RestaurantInformation *_sharedInstance = nil;
    
    // 2
    static dispatch_once_t oncePredicate;
    
    // 3
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[RestaurantInformation alloc] init];
    });
    
    return _sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _something = [[ NSMutableDictionary alloc] initWithObjectsAndKeys:@"data",@"datakey", nil];
    }
    return self;
}

@end

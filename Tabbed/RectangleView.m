//
//  RectangleView.m
//  Tabbed
//
//  Created by Suman Roy on 09/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "RectangleView.h"
#import "RestaurantIndexController.h"
#import <QuartzCore/QuartzCore.h>

@implementation RectangleView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context =  UIGraphicsGetCurrentContext();
//    NSArray *arry= self.subviews;
//        
//    UILabel *itemLabel = arry[0];
    
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 0.0);   //this is the transparent color
    CGContextSetRGBStrokeColor(context, 0.4, 0.3, 0.8, 1.0);
    CGContextSetLineWidth(context, 8 );
    CGContextStrokeRect(context, rect );
    
}

@end

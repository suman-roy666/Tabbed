//
//  TextDisplayView.m
//  Tabbed
//
//  Created by Suman Roy on 10/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "TextDisplayView.h"

@implementation TextDisplayView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
   
    
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.alignment = NSTextAlignmentCenter;
    
    NSDictionary *fontDictionary = [ NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIFont fontWithName:@"Marion" size:28.0],NSFontAttributeName,
                                    [NSNumber numberWithFloat:1.0], NSBaselineOffsetAttributeName,
                                    style,NSParagraphStyleAttributeName,
                                    nil];
    
    CGPoint point = CGPointMake(self.frame.origin.x, self.frame.size.height/3);
    
    [ @"Your Item Is" drawAtPoint: point
                   withAttributes: fontDictionary ];

}
@end

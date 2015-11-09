//
//  SecondViewController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ItemDisplayViewController.h"
#import "RestaurantIndexController.h"
#include "RectangleView.h"
#import <QuartzCore/QuartzCore.h>

@interface ItemDisplayViewController ()

@end

@implementation ItemDisplayViewController

static int tapCount = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RestaurantIndexController *restIdx= [ RestaurantIndexController getRestaurantIndexController ];
    
    [ self.itemDisplayLabel setText:restIdx.item ];
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [ self.view setNeedsDisplayInRect:self.itemDisplayLabel.frame ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapHandler:(id)sender {
    
    switch (tapCount) {
            
        case 0:
            [ self.itemDisplayLabel setTextColor:[ UIColor greenColor]];
            tapCount++;
            break;
            
        case 1:
            [ self.itemDisplayLabel setTextColor:[ UIColor grayColor]];
            tapCount++;
            break;
            
        case 2:
            [ self.itemDisplayLabel setTextColor:[ UIColor purpleColor]];
            tapCount++;
            break;
            
        default:
            tapCount = 0;
            [ self.itemDisplayLabel setTextColor:[ UIColor blackColor]];
            break;
    }
    
    
    
}
@end

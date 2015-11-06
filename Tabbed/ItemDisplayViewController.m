//
//  SecondViewController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ItemDisplayViewController.h"
#import "RestaurantIndexController.h"

@interface ItemDisplayViewController ()

@end

@implementation ItemDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}

- (void)viewDidAppear:(BOOL)animated{
    
    RestaurantIndexController *restIdx= [ RestaurantIndexController getRestaurantIndexController ];
    
    [ self.itemDisplayLabel setText:restIdx.item ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

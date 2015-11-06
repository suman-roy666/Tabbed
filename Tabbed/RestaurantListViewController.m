//
//  FirstViewController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "RestaurantListViewController.h"
#import "RestaurantListCell.h"
#import "RestaurantIndexController.h"
#import "Restaurant.h"
#import "MenuTableViewController.h"

@interface RestaurantListViewController ()
@end

@implementation RestaurantListViewController{
    
    RestaurantIndexController *restIdx;
}

NSString *cellIdentifier = @"RestaurantListCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [ self.tableView registerNib:[ UINib nibWithNibName:cellIdentifier
                                                 bundle:nil]
          forCellReuseIdentifier:cellIdentifier ];
    
    restIdx = [ RestaurantIndexController getRestaurantIndexController ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [ restIdx.restaurantIndex count  ];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    RestaurantListCell *cell = [ tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    Restaurant *restaurantToDisplay = [ restIdx.restaurantIndex objectAtIndex:indexPath.row ];
    
    cell.restaurantCellLabel.text = [ restaurantToDisplay name ];
    
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MenuTableViewController *menuView = [[ MenuTableViewController alloc ] init ];
    
    [ menuView setCurrentRestaurant: [ restIdx.restaurantIndex objectAtIndex:indexPath.row ] ];
    
    [ self.navigationController pushViewController:menuView animated:YES ];
    
}

@end

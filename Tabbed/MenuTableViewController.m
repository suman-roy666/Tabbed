//
//  MenuTableViewController.m
//  Tabbed
//
//  Created by Suman Roy on 05/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "MenuTableViewController.h"
#import "FoodItemsTableViewController.h"

@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [ self setTitle: self.currentRestaurant.name ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [ self.currentRestaurant.menu count ];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"Menu Cell" ];
    
    if ( cell == nil ){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"Menu Cell"];
        
    }
    
    
    [ cell.textLabel setText:self.currentRestaurant.menu[ indexPath.row ][0]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FoodItemsTableViewController *foodItemsView = [[ FoodItemsTableViewController alloc] init ];
    
    foodItemsView.foodItems = [ NSArray arrayWithArray:self.currentRestaurant.menu[ indexPath.row ] ];
    
    [ self.navigationController pushViewController:foodItemsView animated:YES ];
    
    
}

@end

//
//  FoodItemsTableViewController.m
//  Tabbed
//
//  Created by Suman Roy on 06/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "FoodItemsTableViewController.h"
#import "RestaurantIndexController.h"

@interface FoodItemsTableViewController ()

@end

@implementation FoodItemsTableViewController{
    
    RestaurantIndexController *restIdx;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    restIdx= [ RestaurantIndexController getRestaurantIndexController ];
    
    [ self setTitle: self.foodItems[0] ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return ([ self.foodItems count ]-1);
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"Food Item Cell" ];
    
    if ( cell == nil ){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"Food Item Cell"];
        
    }
    
    [ cell.textLabel setText:self.foodItems[ indexPath.row + 1 ]];
  
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    restIdx.item = [ NSString stringWithString: self.foodItems[ indexPath.row + 1 ]];
    
}

@end

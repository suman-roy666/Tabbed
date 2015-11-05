//
//  FirstViewController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "RestaurantListViewController.h"
#import "RestaurantListCell.h"
#import "MenuTableViewController.h"

@interface RestaurantListViewController ()
@end

@implementation RestaurantListViewController

NSString *cellIdentifier = @"RestaurantListCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [ self.tableView registerNib:[ UINib nibWithNibName:cellIdentifier
                                                 bundle:nil]
          forCellReuseIdentifier:cellIdentifier ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    RestaurantListCell *cell = [ tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
//    if ( cell == nil ){
//        
//        
//        cell = [[RestaurantListCell alloc] initWithStyle:UITableViewCellStyleDefault
//                                      reuseIdentifier:@"RestaurantListCell"];
//        
//    }
    
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MenuTableViewController *menuView = [[ MenuTableViewController alloc ] init ];
    
    [ menuView setTitle:@"Menu" ];
    
    [ self.navigationController pushViewController:menuView animated:YES ];
    
}

@end

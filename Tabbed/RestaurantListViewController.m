//
//  FirstViewController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "RestaurantListViewController.h"
#import "RestaurantInformation.h"

@interface RestaurantListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *restaurantListTableView;

@end

@implementation RestaurantListViewController
    

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"Restaurant List Cell" ];
    
    if ( cell == nil ){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"Restaurant List Cell"];
        
    }
    
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

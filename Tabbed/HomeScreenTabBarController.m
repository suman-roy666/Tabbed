//
//  HomeScreenTabBarController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "HomeScreenTabBarController.h"
#import "RestaurantInformation.h"

@interface HomeScreenTabBarController ()


@end

@implementation HomeScreenTabBarController{
    
    RestaurantInformation *rinfo;
}

static NSMutableArray *currentTabViewControllers;
static NSArray *allTabViewControllers;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    allTabViewControllers = [ NSArray arrayWithArray:self.viewControllers];
    
    currentTabViewControllers = [ NSMutableArray arrayWithArray:allTabViewControllers ];
    
    [ currentTabViewControllers removeObjectAtIndex:1];
    
    [ self setViewControllers:currentTabViewControllers ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context{
    
    [ self setViewControllers:allTabViewControllers ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  HomeScreenTabBarController.m
//  Tabbed
//
//  Created by Suman Roy on 04/11/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "HomeScreenTabBarController.h"
#import "RestaurantIndexController.h"
#import "ItemDisplayViewController.h"

@interface HomeScreenTabBarController ()<UITabBarControllerDelegate>


@end

@implementation HomeScreenTabBarController{
    
    RestaurantIndexController *restIdx;
}

static NSMutableArray *currentTabViewControllers;
static NSArray *allTabViewControllers;
#pragma mark - View LifeCycle Method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate=self;
    
    allTabViewControllers = [ NSArray arrayWithArray:self.viewControllers];
    
    currentTabViewControllers = [ NSMutableArray arrayWithArray:allTabViewControllers ];
    
    [ currentTabViewControllers removeObjectAtIndex:1];
    
    [ self setViewControllers:currentTabViewControllers ];
    
    restIdx = [ RestaurantIndexController getRestaurantIndexController ];
    
    [ restIdx addObserver:self forKeyPath:@"item" options: (NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew) context:nil ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Tabbar Controller Delegate Methods

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
{
    if (tabBarController.selectedIndex==0) {
        
        UINavigationController *restaurantNavigationController = (UINavigationController *)viewController;
        [restaurantNavigationController popToRootViewControllerAnimated:YES];
    }
}

#pragma mark - Nsnotification Observer Methods
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context{
    
    if ( ![restIdx.item isEqualToString:@""] ) {
        
        ItemDisplayViewController *itemDisplayView = [ allTabViewControllers objectAtIndex:1 ];
        
        [ itemDisplayView.itemDisplayLabel setText:restIdx.item ];
        
        [ self setViewControllers:allTabViewControllers animated:YES ];
        
        [ self setSelectedViewController:allTabViewControllers[1] ];
    }
    
    
}


@end

//
//  TabBarController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "TabBarController.h"


@implementation TabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tabBar.clipsToBounds = YES;
    
    UIImage *image = kIMG_STRETCH(@"TabBarBg", 15, 20);
    [self.tabBar setBackgroundImage:image];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
}

@end

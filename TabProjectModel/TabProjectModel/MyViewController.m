//
//  MyViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "MyViewController.h"
#import "MyHeader.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    if (self = [super initWithStyle:style]) {
        UIImage *tabbar_Main_selected = [UIImage zac_imageWithOriginalModeName:@"tabbar_Me_selected"];
        UIImage *tabbar_Main = [UIImage zac_imageWithOriginalModeName:@"tabbar_Me"];
        self.title = @"我的";
        self.tabBarItem.image = tabbar_Main;
        self.tabBarItem.selectedImage = tabbar_Main_selected;
        
        UIColor *fontColor_Selected = [UIColor redColor];
        UIColor *fontColor_Normal = [UIColor grayColor];
        
        UIFont *font = [UIFont systemFontOfSize:12];
        NSDictionary *attribute = @{NSForegroundColorAttributeName:fontColor_Normal,
                                    NSFontAttributeName:font};
        
        NSDictionary *attribute_selected = @{NSForegroundColorAttributeName:fontColor_Selected,
                                             NSFontAttributeName:font};
        
        [self.tabBarItem setTitleTextAttributes:attribute forState:UIControlStateNormal];
        [self.tabBarItem setTitleTextAttributes:attribute_selected forState:UIControlStateSelected];
        [self.tabBarItem setTitleTextAttributes:attribute_selected forState:UIControlStateHighlighted];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 40;
    self.tableView.tableFooterView = [UIView new];
    MyHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"MyHeader" owner:nil options:nil] firstObject];
    self.tableView.tableHeaderView = header;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 2) {
        return 1;
    }
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identifier= @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font = [UIFont systemFontOfSize:14];
    }
    //自适应图片（大小）
    cell.textLabel.text = @"XXX";
    cell.imageView.image = [UIImage imageNamed:@"tabbar_Me"];
    return cell;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1;
}

@end

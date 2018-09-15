//
//  MyViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "MyViewController.h"
#import "MyHeader.h"
#import "BMRecordViewController.h"
#import "ShoucangViewController.h"
#import "LookMeRecordViewController.h"
#import "FeedBackViewController.h"
#import "JZRecordViewController.h"
#import "AboutViewController.h"

@interface MyViewController ()
@property (nonatomic, strong) NSArray *dataArr;
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
    
    self.dataArr = @[@[@{@"k":@"我的报名记录"},@{@"k":@"我的收藏"}],@[@{@"k":@"兼职记录"},@{@"k":@"谁看过我"}],@[@{@"k":@"意见反馈"},@{@"k":@"关于我们"}]];
    
//    self.tableView.rowHeight = 40;
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
    return self.dataArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *list = self.dataArr[section];
    return list.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dict = self.dataArr[indexPath.section][indexPath.row];
    static NSString * identifier= @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
       // cell.textLabel.font = [UIFont systemFontOfSize:14];
    }
    //自适应图片（大小）
    cell.textLabel.text = dict[@"k"];
    //cell.imageView.image = [UIImage imageNamed:@"tabbar_Me"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            BMRecordViewController *vc = [[BMRecordViewController alloc] initWithNibName:@"BMRecordViewController" bundle:[NSBundle mainBundle]];
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        }else{
             ShoucangViewController *vc = [[ShoucangViewController alloc] initWithNibName:@"ShoucangViewController" bundle:[NSBundle mainBundle]];
            vc.hidesBottomBarWhenPushed = YES;
             [self.navigationController pushViewController:vc animated:YES];
        }
    }else if (indexPath.section ==1){
        if (indexPath.row == 0) {
             JZRecordViewController *vc = [[JZRecordViewController alloc] initWithNibName:@"JZRecordViewController" bundle:[NSBundle mainBundle]];
            vc.hidesBottomBarWhenPushed = YES;
             [self.navigationController pushViewController:vc animated:YES];
        }else{
             LookMeRecordViewController *vc = [[LookMeRecordViewController alloc] initWithNibName:@"LookMeRecordViewController" bundle:[NSBundle mainBundle]];
            vc.hidesBottomBarWhenPushed = YES;
             [self.navigationController pushViewController:vc animated:YES];
        }
    }else if (indexPath.section == 2){
        if (indexPath.row==0) {
            FeedBackViewController *vc = [[FeedBackViewController alloc] initWithNibName:@"FeedBackViewController" bundle:[NSBundle mainBundle]];
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        }else{
            AboutViewController *vc = [[AboutViewController alloc] initWithNibName:@"AboutViewController" bundle:[NSBundle mainBundle]];
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        }
       
    }
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

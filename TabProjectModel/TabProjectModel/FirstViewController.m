//
//  FirstViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "FirstViewController.h"
#import "MainPageHeader.h"
#import "DetailTableViewCell.h"
#import "SectionHeader.h"
#import "QuweiTableViewCell.h"
#import "JPTableViewCell.h"
#import "ListTableViewController.h"

@interface FirstViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation FirstViewController

- (instancetype)init
{
    if (self = [super init]) {
        UIImage *tabbar_Main_selected = [UIImage zac_imageWithOriginalModeName:@"tabbar_home_selected"];
        UIImage *tabbar_Main = [UIImage zac_imageWithOriginalModeName:@"tabbar_home"];
        self.title = @"首页";
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
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return 3;
    }else if (section==1){
        return 3;
    }
    else if (section==2){
        return 1;
    }
    else if (section==3){
       return 3;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 2){
        QuweiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuweiTableViewCell"];
        return cell;
    }
    else if (indexPath.section == 3){
        JPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"JPTableViewCell"];
        return cell;
    }
    else{
        DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
        
        cell.nameLabel.text = @"aaa";
        cell.desc.text = @"bb";
        cell.money.text = @"100";
        return cell;
    }
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    SectionHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"SectionHeader" owner:nil options:nil] firstObject];
    header.name.text = @"热门简直";
    return header;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 2){
        return 280;
    }
    else if(indexPath.section == 3){
        return 140;
    }
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListTableViewController *list = [[ListTableViewController alloc] init];
    list.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:list animated:YES];
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        MainPageHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"MainPageHeader" owner:nil options:nil] firstObject];
        _tableView.tableHeaderView = header;
        
        [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"DetailTableViewCell"];
        [self.tableView registerNib:[UINib nibWithNibName:@"QuweiTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"QuweiTableViewCell"];
        [self.tableView registerNib:[UINib nibWithNibName:@"JPTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"JPTableViewCell"];
    }
    return _tableView;
}

@end

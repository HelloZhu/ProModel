//
//  MyViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "MyViewController.h"
#import "MyHeader.h"

@interface MyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation MyViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
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
    
    self.dataSource = @[@[@{@"image":@"mydindan",@"name":@"我的报名通过记录"},@{@"image":@"mydashang",@"name":@"我的报名未通过记录"}],
                        @[@{@"image":@"myhd",@"name":@"浏览记录"},@{@"image":@"mysc",@"name":@"我的收藏"}],
                        @[@{@"image":@"kf",@"name":@"客服"},@{@"image":@"yjfk",@"name":@"意见反馈"},@{@"image":@"sz",@"name":@"设置"}]
                        ];
    [self.view addSubview:self.tableView];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _tableView.frame = self.view.bounds;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataSource.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *list = self.dataSource[section];
    return list.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dict = self.dataSource[indexPath.section][indexPath.row];
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = dict[@"name"];
    //cell.imageView.image = [UIImage imageNamed:dict[@"image"]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        _tableView.sectionHeaderHeight = 2;
        _tableView.sectionFooterHeight = 2;
//        MyHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"MyHeader" owner:nil options:nil] firstObject];
//        header.frame = CGRectMake(0, 0, self.view.frame.size.width, 50);
//        _tableView.tableHeaderView =header ;
        //        [self.tableView registerNib:[UINib nibWithNibName:@"ZXTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"ZXTableViewCell"];
    }
    return _tableView;
}


@end

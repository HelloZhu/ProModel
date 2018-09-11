//
//  SecondViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailTableViewCell.h"
#import "XQViewController.h"
#import "SecondHeader.h"
#import "JobCenter.h"
#import "ListTableViewController.h"

@interface SecondViewController ()
@property (nonatomic, strong) JobCenters *jobs;
@end

@implementation SecondViewController

- (instancetype)init
{
    if (self = [super init]) {
        UIImage *tabbar_Main_selected = [UIImage zac_imageWithOriginalModeName:@"tabbar_comment_selected"];
        UIImage *tabbar_Main = [UIImage zac_imageWithOriginalModeName:@"tabbar_comment"];
        self.title = @"岗位";
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
    
    self.tableView.rowHeight = 60;
    [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"DetailTableViewCell"];
    SecondHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"SecondHeader" owner:nil options:nil] firstObject];
    header.buttonActionBlock = ^(NSString *title) {
     
        ListTableViewController *list = [[ListTableViewController alloc] init];
        list.title = title;
        list.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:list animated:YES];
    };
    self.tableView.tableHeaderView = header;
    [self createLocalJob];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.jobs.results.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
    JobCenter *job = self.jobs.results[indexPath.row];
    cell.nameLabel.text = job.title;
    cell.desc.text = job.jobDate;
    cell.money.text = job.salary;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    JobCenter *job = self.jobs.results[indexPath.row];
    XQViewController *xq = [[XQViewController alloc] initWithNibName:@"XQViewController" bundle:[NSBundle mainBundle]];
    xq.hidesBottomBarWhenPushed = YES;
    xq.jobName = job.title;
    [self.navigationController pushViewController:xq animated:YES];
}


- (void)createLocalJob
{
    /** */
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"jobcenter" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        self.jobs = [JobCenters yy_modelWithDictionary:dict[@"data"]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    });
    
}

@end

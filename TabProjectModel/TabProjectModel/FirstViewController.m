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
#import "LocalJob.h"
#import "qualityRecommends.h"
#import "StarCompany.h"
#import "interestJob.h"
#import "XQViewController.h"


@interface FirstViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) LocalJobs *localJob;
@property (nonatomic, strong) interestJobs *interestJob;
@property (nonatomic, strong) qualityRecommendsJob *qualityRecommendsJob;
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
    [self createLocalJob];
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
        interestJob *job1 = self.interestJob.resources[0];
        interestJob *job2 = self.interestJob.resources[1];
        interestJob *job3 = self.interestJob.resources[2];
        interestJob *job4 = self.interestJob.resources[3];
        QuweiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuweiTableViewCell"];
        [cell.first sd_setBackgroundImageWithURL:[NSURL URLWithString:job1.image] forState:UIControlStateNormal];
        [cell.seond sd_setBackgroundImageWithURL:[NSURL URLWithString:job2.image] forState:UIControlStateNormal];
        [cell.third sd_setBackgroundImageWithURL:[NSURL URLWithString:job3.image] forState:UIControlStateNormal];
        [cell.fouth sd_setBackgroundImageWithURL:[NSURL URLWithString:job4.image] forState:UIControlStateNormal];
        
        cell.firsttag.text = job1.title;
        cell.secondtag.text = job2.title;
        cell.thirdtag.text = job3.title;
        cell.fouthtag.text = job4.title;
        
        return cell;
    }
    else if (indexPath.section == 3){
        
        qualityRecommends *job = [self.qualityRecommendsJob.resources objectAtIndex:indexPath.row];
        JPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"JPTableViewCell"];
        [cell.bgimageView sd_setImageWithURL:[NSURL URLWithString:job.image]];
        cell.title.text = job.title;
        cell.subtitle.text = job.subTitle;
        return cell;
    }
    else if (indexPath.section == 1)
    {
        LocalJob *job = self.localJob.resources[indexPath.row];
        DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
        cell.nameLabel.text = job.title;
        cell.desc.text =  job.subTitle;
        cell.money.text = job.salaryDesc;
        return cell;
    }
    else
    {
        NSUInteger index = self.localJob.resources.count - (indexPath.row+1);
        LocalJob *job = self.localJob.resources[index];
        DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
        cell.nameLabel.text = job.title;
        cell.desc.text =  job.subTitle;
        cell.money.text = job.salaryDesc;
        return cell;
    }
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    NSString *title = @"";
    if (section == 0) {
        title = @"热门兼职";
    }else if (section == 1){
       title = @"最新职位";
    }else if (section == 2){
        title = @"趣味兼职";
    }else if (section == 3){
        title = @"精品推荐";
    }
    
    SectionHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"SectionHeader" owner:nil options:nil] firstObject];
    header.name.text = title;
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
    if (indexPath.section == 0 || indexPath.section == 1) {
        
        NSUInteger index = self.localJob.resources.count - (indexPath.row+1);
        LocalJob *job =  (indexPath.section == 1) ? self.localJob.resources[indexPath.row] : self.localJob.resources[index];
        XQViewController *xq = [[XQViewController alloc] initWithNibName:@"XQViewController" bundle:[NSBundle mainBundle]];
        xq.jobName = job.title;
        xq.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:xq animated:YES];
    }else{
        ListTableViewController *list = [[ListTableViewController alloc] init];
        list.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:list animated:YES];
    }
    
    
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
        header.buttonActionBlock = ^(NSString *title) {
            
            if ([title isEqualToString:@"100"]) {
                title = @"传单";
            }else if ([title isEqualToString:@"101"]){
                title = @"主播";
            }else if ([title isEqualToString:@"102"]){
                title = @"收银";
            }else if ([title isEqualToString:@"103"]){
                title = @"辅导";
            }
            
            ListTableViewController *list = [[ListTableViewController alloc] init];
            list.title = title;
            list.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:list animated:YES];
        };
        [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"DetailTableViewCell"];
        [self.tableView registerNib:[UINib nibWithNibName:@"QuweiTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"QuweiTableViewCell"];
        [self.tableView registerNib:[UINib nibWithNibName:@"JPTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"JPTableViewCell"];
    }
    return _tableView;
}

- (void)createLocalJob
{
    /** */
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"first" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        LocalJobs *jobs = [LocalJobs yy_modelWithDictionary:dict[@"data"][@"location"]];
        self.localJob = jobs;
        
        NSString *secondpath = [[NSBundle mainBundle] pathForResource:@"second" ofType:@"json"];
        NSData *seconddata = [NSData dataWithContentsOfFile:secondpath];
        NSDictionary *seconddict = [NSJSONSerialization JSONObjectWithData:seconddata options:0 error:nil];
        self.interestJob = [interestJobs yy_modelWithDictionary:seconddict[@"data"][@"interest"]];
        self.qualityRecommendsJob = [qualityRecommendsJob yy_modelWithDictionary:seconddict[@"data"][@"qualityRecommends"]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    });
    
}

@end

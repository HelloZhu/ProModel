//
//  ListTableViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "ListTableViewController.h"
#import "DetailTableViewCell.h"
#import "XQViewController.h"
#import "LocalJob.h"
#import "qualityRecommends.h"
#import "StarCompany.h"
#import "interestJob.h"
#import "JobCenter.h"

@interface ListTableViewController ()
@property (nonatomic, strong) LocalJobs *localJob;
@property (nonatomic, strong) interestJobs *interestJob;
@property (nonatomic, strong) qualityRecommendsJob *qualityRecommendsJob;
@property (nonatomic, strong) JobCenters *jobs;
@end

@implementation ListTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title = @"全部职位";
    self.tableView.rowHeight = 60;
    [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"DetailTableViewCell"];
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

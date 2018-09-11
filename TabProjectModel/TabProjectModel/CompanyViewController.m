//
//  CompanyViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/11.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "CompanyViewController.h"
#import "CompanyHeader.h"
#import "CompanyDetail.h"

@interface CompanyViewController ()<UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong)CompanyHeader *header;
@property (nonatomic, strong)CompanyDetail *company;
@end

@implementation CompanyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"公司介绍";
    self.view.backgroundColor = [UIColor whiteColor];
    self.header = [[[NSBundle mainBundle] loadNibNamed:@"CompanyHeader" owner:nil options:nil] firstObject];
    
    [self createLocalJob];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"DetailTableViewCell"];
    }
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.tableHeaderView = self.header;
    }
    return _tableView;
}



- (void)createLocalJob
{
    /** */
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        int x = arc4random() % 50;
        NSString *path = [[NSBundle mainBundle] pathForResource:@"user" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        self.company = [CompanyDetail yy_modelWithDictionary:dict];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self setdata];
            [self.view addSubview:self.tableView];
            [self.tableView reloadData];
        });
    });
}

- (void)setdata
{
 
}



@end

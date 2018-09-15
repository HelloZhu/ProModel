//
//  BMRecordViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/15.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "BMRecordViewController.h"
#import "BaoMRecord.h"

@interface BMRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *dataArr;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation BMRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"报名记录";
    
    self.dataArr = [BaoMRecord searchWithWhere:nil];
    
    if (self.dataArr.count) {
        self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
        self.tableView.rowHeight = 80;
        [self.view addSubview:self.tableView];
    }

}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaoMRecord *info = self.dataArr[indexPath.section];
    static NSString * identifier= @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
         cell.textLabel.font = [UIFont systemFontOfSize:14];
        cell.imageView.layer.cornerRadius = 40;
//        cell.imageView.
        cell.textLabel.adjustsFontSizeToFitWidth = YES;
    }
    //自适应图片（大小）
    cell.textLabel.text = [NSString stringWithFormat:@"报名公司：%@", info.gongsi];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"报名日期：%@", info.date];
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:info.gongsilogo] placeholderImage:[UIImage imageNamed:@"icon_avatar_man"]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
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

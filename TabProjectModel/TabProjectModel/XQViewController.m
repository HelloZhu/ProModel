//
//  XQViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "XQViewController.h"
#import "DetailTableViewCell.h"
#import "SectionHeader.h"
#import "XQView.h"
#import "BaoMingViewController.h"
#import "JobDeatil.h"
#import "NSString+LabelWidthAndHeight.h"
#import "UIView+SetRect.h"

@interface XQViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *baomingBtn;
@property (strong, nonatomic)UITableView *tableView;
@property (strong, nonatomic) JobDeatil *details;
@property (strong, nonatomic)  XQView *header;
@end

@implementation XQViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"兼职详情";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
    self.header = [[[NSBundle mainBundle] loadNibNamed:@"XQView" owner:nil options:nil] firstObject];
   
    [self createLocalJob];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    _tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - self.baomingBtn.bounds.size.height);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
    
    cell.nameLabel.text = @"aaa";
    cell.desc.text = @"bb";
    cell.money.text = @"100";
    return cell;
}

//- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    SectionHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"SectionHeader" owner:nil options:nil] firstObject];
//    header.name.text = @"推荐";
//    return header;
//}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 40;
//}
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
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
       
        
        _tableView.tableHeaderView = self.header;
        
        [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"DetailTableViewCell"];
    }
    return _tableView;
}

- (IBAction)shoucang:(id)sender {
}
- (IBAction)baoming:(id)sender {
    BaoMingViewController *vc = [[BaoMingViewController alloc] initWithNibName:@"BaoMingViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)createLocalJob
{
    /** */
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"detail" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        self.details = [JobDeatil yy_modelWithDictionary:dict];
      
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self setdata];
            [self.view addSubview:self.tableView];
            [self.tableView reloadData];
        });
    });
}

- (void)setdata
{
    self.header.title.text = self.details.data.title;
    self.header.number.text = [NSString stringWithFormat:@"招%ld人",(long)self.details.data.jobCount];
    self.header.money.text = self.details.data.salary;
    self.header.riqi.text = [NSString stringWithFormat:@"工作日期：%@",self.details.data.jobDate];
    self.header.shijian.text = [NSString stringWithFormat:@"工作时间：%@",self.details.data.jobTime];
    self.header.yaoqiu.text = self.details.data.jobDesc;
//    self.header.neirong.text = @"";
//    self.header.gongzuoyaoqiu.text = @"";
    self.header.gsming.text = self.details.data.company.name;
    self.header.baomrenshu.text = [NSString stringWithFormat:@"报名人数%ld人",(long)self.details.data.applyBalance];
//    [self.header.ren1 sd_setImageWithURL:[NSURL URLWithString:@""]];
//    [self.header.ren2 sd_setImageWithURL:[NSURL URLWithString:@""]];
//    [self.header.ren1 sd_setImageWithURL:[NSURL URLWithString:@""]];
//    [self.header.ren1 sd_setImageWithURL:[NSURL URLWithString:@""]];
    [self.header.gongsiimage sd_setImageWithURL:[NSURL URLWithString:self.details.data.company.logo]];
    CGFloat hei = [self.details.data.jobDesc heightWithStringFont:self.header.yaoqiu.font fixedWidth:[UIScreen mainScreen].bounds.size.width];
    self.header.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.header.height+hei+50);
}

@end

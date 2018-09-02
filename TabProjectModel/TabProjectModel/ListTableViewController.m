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

@interface ListTableViewController ()

@end

@implementation ListTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.tableView.rowHeight = 60;
    [self.tableView registerNib:[UINib nibWithNibName:@"DetailTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"DetailTableViewCell"];
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
    return 30;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailTableViewCell"];
    
    cell.nameLabel.text = @"aaa";
    cell.desc.text = @"bb";
    cell.money.text = @"100";
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    XQViewController *xq = [[XQViewController alloc] initWithNibName:@"XQViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:xq animated:YES];
}



@end

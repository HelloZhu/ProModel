//
//  BaoMingViewController.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "BaoMingViewController.h"
#import <SVProgressHUD.h>

@interface BaoMingViewController ()
@property (weak, nonatomic) IBOutlet UIButton *baimingButton;
@property (weak, nonatomic) IBOutlet UITextField *dianhua;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *xueli;
@property (weak, nonatomic) IBOutlet UITextField *liuyan;

@end

@implementation BaoMingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"立即报名";
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
- (IBAction)baoming:(id)sender {
    
    if (_dianhua.text.length < 11) {
        [SVProgressHUD showErrorWithStatus:@"请输入电话"];
        return;
    }
    if (_name.text.length < 2) {
        [SVProgressHUD showErrorWithStatus:@"请输入名字"];
        return;
    }
    if (_xueli.text.length < 2) {
        [SVProgressHUD showErrorWithStatus:@"请输入学历"];
        return;
    }
    [SVProgressHUD showSuccessWithStatus:@"报名成功"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

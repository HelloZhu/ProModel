//
//  XQView.h
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XQView : UIView
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *number;
@property (weak, nonatomic) IBOutlet UIImageView *didian;

@property (weak, nonatomic) IBOutlet UILabel *money;

@property (weak, nonatomic) IBOutlet UILabel *riqi;

@property (weak, nonatomic) IBOutlet UILabel *shijian;
@property (weak, nonatomic) IBOutlet UILabel *yaoqiu;

@property (weak, nonatomic) IBOutlet UILabel *neirong;
@property (weak, nonatomic) IBOutlet UILabel *gongzuoyaoqiu;
@property (weak, nonatomic) IBOutlet UIImageView *gongsiimage;
@property (weak, nonatomic) IBOutlet UILabel *gsming;
@property (weak, nonatomic) IBOutlet UILabel *baomrenshu;

@property (weak, nonatomic) IBOutlet UIImageView *ren1;

@property (weak, nonatomic) IBOutlet UIImageView *ren2;
@property (weak, nonatomic) IBOutlet UIImageView *ren3;
@property (weak, nonatomic) IBOutlet UIImageView *ren4;

@property (copy, nonatomic) void(^selectCompany)(void);

@end

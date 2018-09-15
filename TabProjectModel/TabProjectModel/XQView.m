//
//  XQView.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "XQView.h"

@implementation XQView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.gongsiimage.layer.masksToBounds = YES;
    self.gongsiimage.layer.cornerRadius = 30.0;
}
- (IBAction)gongsiAction:(id)sender {
    if (self.selectCompany) {
        self.selectCompany();
    }
}

@end

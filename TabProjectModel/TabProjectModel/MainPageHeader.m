//
//  MainPageHeader.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "MainPageHeader.h"

@implementation MainPageHeader

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
}

- (IBAction)button:(id)sender {
    UIButton *button = (UIButton *)sender;
    if (self.buttonActionBlock) {
        self.buttonActionBlock([NSString stringWithFormat:@"%ld",(long)button.tag]);
    }
}

@end

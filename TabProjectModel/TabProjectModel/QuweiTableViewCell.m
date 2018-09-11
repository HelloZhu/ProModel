//
//  QuweiTableViewCell.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "QuweiTableViewCell.h"

@implementation QuweiTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}
- (IBAction)buttonAction:(id)sender {
    UIButton *button = (UIButton *)sender;
    if (self.buttonActionBlock) {
        self.buttonActionBlock(button.currentTitle);
    }
}

@end

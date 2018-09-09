//
//  SecondHeader.m
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import "SecondHeader.h"
#import "UIButton+JKImagePosition.h"

@implementation SecondHeader

- (void)awakeFromNib
{
    [super awakeFromNib];
    
     [self.tg jk_setImagePosition:LXMImagePositionTop spacing:5];
     [self.cy jk_setImagePosition:LXMImagePositionTop spacing:5];
     [self.dg jk_setImagePosition:LXMImagePositionTop spacing:5];
     [self.cyjn jk_setImagePosition:LXMImagePositionTop spacing:5];
     [self.wlcc jk_setImagePosition:LXMImagePositionTop spacing:5];
    
    [self.zhyc jk_setImagePosition:LXMImagePositionTop spacing:5];
    [self.jjpx jk_setImagePosition:LXMImagePositionTop spacing:5];
    [self.kfhw jk_setImagePosition:LXMImagePositionTop spacing:5];
    [self.wyzl jk_setImagePosition:LXMImagePositionTop spacing:5];
    [self.qt jk_setImagePosition:LXMImagePositionTop spacing:5];
}

@end

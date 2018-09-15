//
//  MainPageHeader.h
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainPageHeader : UIView
@property (weak, nonatomic) IBOutlet UIImageView *cd;
@property (weak, nonatomic) IBOutlet UIImageView *zb;
@property (weak, nonatomic) IBOutlet UIImageView *sy;
@property (weak, nonatomic) IBOutlet UIImageView *fd;
/** */
@property (nonatomic,copy) void(^buttonActionBlock)(NSString *title);
@end


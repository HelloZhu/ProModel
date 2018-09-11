//
//  JPTableViewCell.h
//  TabProjectModel
//
//  Created by ap2 on 2018/9/2.
//  Copyright © 2018年 ap2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JPTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *bgimageView;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subtitle;

@end

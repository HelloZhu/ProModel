//
//  RotateImageView.h
//  FlouRoad
//
//  Created by niang on 2018/1/17.
//  Copyright © 2018年 niang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotateLoadCover : UIImageView
@property (nonatomic, strong) UIImage *originImage;
- (void)removeAfterDelay:(NSTimeInterval)delay;
@end

//
//  RotateImageView.m
//  FlouRoad
//
//  Created by niang on 2018/1/17.
//  Copyright © 2018年 niang. All rights reserved.
//

#import "RotateLoadCover.h"
#import "UIImage+Rotate.h"

@interface RotateLoadCover ()
@property (nonatomic, copy) NSString *launchImageName;
@end
@implementation RotateLoadCover
- (NSString *)launchImageName{
    if (!_launchImageName) {
        _launchImageName = @"LaunchImage-800-Portrait-736h";
    }
    return _launchImageName;
    //https://www.ianisme.com/ios/1825.html
    //NSDictionary *infoPlist = [[NSBundle mainBundle] infoDictionary];
    //https://www.jianshu.com/p/5358f587af38
}
- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addBarObserver];
    }
    return self;
}
- (id)init
{
    self = [super init];
    if (self) {
        [self addBarObserver];
    }
    return self;
}
- (void)addBarObserver{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusChange) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    self.originImage = [UIImage imageNamed:self.launchImageName];
}
- (void)setOriginImage:(UIImage *)originImage{
    _originImage = originImage;
    [self statusChange];
}
- (void)statusChange{
    if (!self.originImage) return;
    //1正常状态   4顶角在手机左下边    3顶角在右上边。
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    if (interfaceOrientation == 1) {
        self.image = self.originImage;
    }else if (interfaceOrientation == 4) {
        self.image = [self.originImage rotate:UIImageOrientationRight];
    }else if (interfaceOrientation == 3) {
        self.image = [self.originImage rotate:UIImageOrientationLeft];
    }
}
- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)removeAfterDelay:(NSTimeInterval)delay
{
    [self performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:delay];
}
@end


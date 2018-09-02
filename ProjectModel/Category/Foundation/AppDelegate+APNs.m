//
//  AppDelegate+APNs.m
//  ProjectModel
//
//  Created by ap2 on 2017/12/25.
//  Copyright © 2017年 ap2. All rights reserved.
//

#import "AppDelegate+APNs.h"
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif

@implementation AppDelegate (APNs)

- (void)registerAPNs
{
    
//        if ([UIDevice currentDevice].systemVersion.floatValue >= 10)
//        {
//            UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
//            center.delegate = delegate;
//            [center requestAuthorizationWithOptions:(UNAuthorizationOptionAlert | UNAuthorizationOptionBadge | UNAuthorizationOptionSound) completionHandler:^(BOOL granted, NSError * _Nullable error) {
//
//                if (granted)
//                {
//                    [center getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
//
//                        NSLog(@"%@", settings);
//                    }];
//                }
//                else
//                {
//                }
//            }];
//
//            [[UIApplication sharedApplication] registerForRemoteNotifications];
//        }
//        else if (([UIDevice currentDevice].systemVersion.floatValue >= 8.0))
//        {
//            UIApplication *application = [UIApplication sharedApplication];
//            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound|UIUserNotificationTypeAlert|UIUserNotificationTypeBadge) categories:nil];
//            [application registerUserNotificationSettings:settings];
//
//            [[UIApplication sharedApplication] registerForRemoteNotifications];
//        }
//        else
//        {
//            UIRemoteNotificationType remoteType = (UIRemoteNotificationType)(UIRemoteNotificationTypeSound
//                                                                             | UIRemoteNotificationTypeAlert
//                                                                             | UIRemoteNotificationTypeBadge);
//
//            [[UIApplication sharedApplication] registerForRemoteNotificationTypes:remoteType];
//        }

}

@end

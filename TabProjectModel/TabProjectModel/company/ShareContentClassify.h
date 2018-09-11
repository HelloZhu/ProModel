#import <UIKit/UIKit.h>

@interface ShareContentClassify : NSObject

@property (nonatomic, strong) NSString * qQShare;
@property (nonatomic, strong) NSString * qQTalk;
@property (nonatomic, strong) NSString * sinaWb;
@property (nonatomic, strong) NSString * weixinFriend;
@property (nonatomic, strong) NSString * weixinTalk;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
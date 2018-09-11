#import <UIKit/UIKit.h>

@interface StarCompany : NSObject

@property (nonatomic, strong) NSString * image;
@property (nonatomic, strong) NSString * jumpKey;
@property (nonatomic, strong) NSString * param;
@property (nonatomic, strong) NSString * subLogo;
@property (nonatomic, strong) NSString * subTitle;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
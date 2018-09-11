#import <UIKit/UIKit.h>

@interface interestJob : NSObject

@property (nonatomic, strong) NSString * image;
@property (nonatomic, strong) NSString * jumpKey;
@property (nonatomic, strong) NSString * param;
@property (nonatomic, assign) NSInteger resourceId;
@property (nonatomic, assign) NSInteger resourceType;
@property (nonatomic, strong) NSString * shareImage;
@property (nonatomic, strong) NSString * subTitle;
@property (nonatomic, strong) NSString * tagDesc;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger townId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
@interface interestJobs :NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSArray <interestJob *>*resources;
@end

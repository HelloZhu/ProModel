#import <UIKit/UIKit.h>



@interface LocalJob : NSObject

@property (nonatomic, strong) NSString * distance;
@property (nonatomic, strong) NSString * image;
@property (nonatomic, strong) NSString * jumpKey;
@property (nonatomic, strong) NSString * param;
@property (nonatomic, assign) NSInteger resourceId;
@property (nonatomic, strong) NSString * salaryDesc;
@property (nonatomic, strong) NSString * subContent;
@property (nonatomic, strong) NSString * subLogo;
@property (nonatomic, strong) NSString * subTitle;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end


@interface LocalJobs : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSArray <LocalJob *>*resources;
@end

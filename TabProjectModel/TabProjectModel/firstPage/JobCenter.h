#import <UIKit/UIKit.h>
#import "ClearingForm.h"
#import "ClearingForm.h"

@interface JobCenter : NSObject

@property (nonatomic, strong) NSString * addressDetail;
@property (nonatomic, strong) NSString * brandName;
@property (nonatomic, strong) ClearingForm * clearingForm;
@property (nonatomic, strong) NSString * companyLogo;
@property (nonatomic, assign) NSInteger hotScore;
@property (nonatomic, strong) NSString * jobDate;
@property (nonatomic, strong) ClearingForm * jobPattern;
@property (nonatomic, assign) NSInteger objectType;
@property (nonatomic, assign) NSInteger partJobId;
@property (nonatomic, strong) NSString * priority;
@property (nonatomic, strong) NSString * qingtuanbaoProctionUrl;
@property (nonatomic, strong) NSString * salary;
@property (nonatomic, assign) NSInteger salaryType;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end

@interface JobCenters : NSObject
@property (nonatomic, assign) NSInteger pageNum;
@property (nonatomic, assign) NSInteger pageSize;
@property (nonatomic, strong) NSArray * results;
@property (nonatomic, assign) NSInteger totalCount;
@end

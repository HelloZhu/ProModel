#import <UIKit/UIKit.h>
#import "Area.h"
#import "JobCategory.h"
#import "Classification.h"
#import "JobCategory.h"
#import "Company.h"
#import "PublishTown.h"
#import "SalaryVO.h"
#import "ShareContentClassify.h"
#import "User.h"

@interface Data : NSObject

@property (nonatomic, strong) NSString * addressDetail;
@property (nonatomic, assign) NSInteger applyBalance;
@property (nonatomic, strong) Area * area;
@property (nonatomic, strong) NSString * bonus;
@property (nonatomic, assign) NSInteger buttonStatus;
@property (nonatomic, strong) JobCategory * category;
@property (nonatomic, strong) Classification * classification;
@property (nonatomic, strong) JobCategory * clearingForm;
@property (nonatomic, strong) Company * company;
@property (nonatomic, strong) JobCategory * companyType;
@property (nonatomic, strong) NSString * contentPrompt;
@property (nonatomic, strong) JobCategory * cycleType;
@property (nonatomic, strong) NSString * deadline;
@property (nonatomic, assign) NSInteger diploma;
@property (nonatomic, assign) NSInteger entryCount;
@property (nonatomic, assign) BOOL expendApplyNum;
@property (nonatomic, strong) NSString * heightRequire;
@property (nonatomic, strong) NSString * interviewAddress;
@property (nonatomic, strong) NSString * interviewTime;
@property (nonatomic, assign) NSInteger jobCount;
@property (nonatomic, strong) NSString * jobDate;
@property (nonatomic, strong) NSString * jobDateDesc;
@property (nonatomic, strong) NSString * jobDesc;
@property (nonatomic, strong) NSArray * jobPhotos;
@property (nonatomic, strong) NSString * jobTime;
@property (nonatomic, assign) NSInteger jobTypeId;
@property (nonatomic, assign) CGFloat latitude;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, assign) CGFloat longitude;
@property (nonatomic, strong) NSString * miniAppShare;
@property (nonatomic, assign) BOOL needHealth;
@property (nonatomic, assign) BOOL needHeight;
@property (nonatomic, assign) BOOL needInterview;
@property (nonatomic, assign) NSInteger partJobApplyStatus;
@property (nonatomic, assign) NSInteger partJobId;
@property (nonatomic, strong) PublishTown * publishTown;
@property (nonatomic, strong) NSString * qingtuanbaoProctionUrl;
@property (nonatomic, strong) NSString * salary;
@property (nonatomic, assign) NSInteger salaryType;
@property (nonatomic, strong) SalaryVO * salaryVO;
@property (nonatomic, strong) JobCategory * sexRequire;
@property (nonatomic, strong) ShareContentClassify * shareContentClassifys;
@property (nonatomic, strong) NSString * shareUrl;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSArray * users;
@property (nonatomic, strong) NSString * welfare;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;




@end

#import <UIKit/UIKit.h>
#import "Authenticated.h"
#import "Authenticated.h"
#import "Authenticated.h"

@interface Result : NSObject

@property (nonatomic, strong) NSString * addressBuilding;
@property (nonatomic, strong) NSString * addressDetail;
@property (nonatomic, assign) NSInteger areaId;
@property (nonatomic, strong) Authenticated * clearingForm;
@property (nonatomic, strong) Authenticated * companyType;
@property (nonatomic, assign) NSInteger entryCount;
@property (nonatomic, assign) NSInteger jobCount;
@property (nonatomic, strong) NSString * jobDate;
@property (nonatomic, strong) NSString * jobTime;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, assign) NSInteger partJobId;
@property (nonatomic, strong) NSString * salary;
@property (nonatomic, strong) Authenticated * salaryTimeUnit;
@property (nonatomic, assign) NSInteger salaryType;
@property (nonatomic, assign) CGFloat salaryUnit;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger townId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
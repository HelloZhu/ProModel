#import <UIKit/UIKit.h>
#import "Authenticated.h"
#import "Authenticated.h"
#import "Authenticated.h"
#import "EvaluationStar.h"
#import "Authenticated.h"
#import "PagePartJobEvaluation.h"
#import "PagePartJob.h"
#import "PagePartJobEvaluation.h"
#import "ShareContentClassify.h"

@interface CompanyData : NSObject

@property (nonatomic, strong) NSArray * accountAuthorizedManagers;
@property (nonatomic, strong) NSString * address;
@property (nonatomic, assign) NSInteger areaId;
@property (nonatomic, strong) Authenticated * authenticated;
@property (nonatomic, strong) NSString * backgroundImage;
@property (nonatomic, strong) NSString * brandName;
@property (nonatomic, strong) NSString * chargerName;
@property (nonatomic, assign) NSInteger companyId;
@property (nonatomic, strong) Authenticated * companyScale;
@property (nonatomic, strong) NSString * companyShareContent;
@property (nonatomic, strong) NSString * companyShareLogo;
@property (nonatomic, strong) NSString * companyShareTitle;
@property (nonatomic, strong) NSString * companyShareUrl;
@property (nonatomic, strong) Authenticated * companyType;
@property (nonatomic, strong) NSString * email;
@property (nonatomic, strong) EvaluationStar * evaluationStar;
@property (nonatomic, strong) Authenticated * industry;
@property (nonatomic, strong) NSString * introduction;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) PagePartJobEvaluation * pagePartJobEvaluations;
@property (nonatomic, strong) PagePartJob * pagePartJobs;
@property (nonatomic, strong) PagePartJobEvaluation * pagePractices;
@property (nonatomic, strong) NSString * position;
@property (nonatomic, strong) NSString * processProportion;
@property (nonatomic, strong) NSString * processTime;
@property (nonatomic, strong) NSString * qq;
@property (nonatomic, strong) ShareContentClassify * shareContentClassifys;
@property (nonatomic, assign) NSInteger townId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end

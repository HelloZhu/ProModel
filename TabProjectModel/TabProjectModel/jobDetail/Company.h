#import <UIKit/UIKit.h>

@interface Company : NSObject

@property (nonatomic, strong) NSString * accountName;
@property (nonatomic, assign) NSInteger companyId;
@property (nonatomic, strong) NSString * companyUuid;
@property (nonatomic, assign) BOOL companyWhite;
@property (nonatomic, assign) BOOL enterpriseAuth;
@property (nonatomic, assign) BOOL enterpriseDeposit;
@property (nonatomic, strong) NSString * evaluateStar;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * processProportion;
@property (nonatomic, strong) NSString * processTime;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
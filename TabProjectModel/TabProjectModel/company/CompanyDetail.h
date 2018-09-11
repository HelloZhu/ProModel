#import <UIKit/UIKit.h>
#import "CompanyData.h"

@interface CompanyDetail : NSObject

@property (nonatomic, assign) NSInteger code;
@property (nonatomic, strong) CompanyData * data;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, assign) BOOL success;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end

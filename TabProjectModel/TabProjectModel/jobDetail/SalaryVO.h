#import <UIKit/UIKit.h>

@interface SalaryVO : NSObject

@property (nonatomic, strong) NSString * scalar;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, strong) NSString * unit;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
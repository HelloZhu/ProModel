#import <UIKit/UIKit.h>

@interface EvaluationStar : NSObject

@property (nonatomic, strong) NSString * settlementEfficiencyStar;
@property (nonatomic, strong) NSString * starCount;
@property (nonatomic, strong) NSString * workContentStar;
@property (nonatomic, strong) NSString * workEnvironmentStar;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
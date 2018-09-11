#import <UIKit/UIKit.h>

@interface Area : NSObject

@property (nonatomic, assign) NSInteger areaId;
@property (nonatomic, strong) NSString * areaName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
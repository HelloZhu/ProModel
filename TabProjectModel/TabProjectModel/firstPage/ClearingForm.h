#import <UIKit/UIKit.h>

@interface ClearingForm : NSObject

@property (nonatomic, strong) NSString * key;
@property (nonatomic, strong) NSString * value;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
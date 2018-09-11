#import <UIKit/UIKit.h>

@interface Authenticated : NSObject

@property (nonatomic, strong) NSString * key;
@property (nonatomic, strong) NSString * value;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
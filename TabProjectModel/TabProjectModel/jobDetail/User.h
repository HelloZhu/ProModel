#import <UIKit/UIKit.h>

@interface User : NSObject

@property (nonatomic, assign) NSInteger accountId;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) NSInteger userId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
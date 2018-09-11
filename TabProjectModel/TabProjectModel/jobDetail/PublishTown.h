#import <UIKit/UIKit.h>

@interface PublishTown : NSObject

@property (nonatomic, assign) NSInteger townId;
@property (nonatomic, strong) NSString * townName;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
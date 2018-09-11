#import <UIKit/UIKit.h>
#import "Data.h"
#import "Extra.h"

@interface JobDeatil : NSObject

@property (nonatomic, assign) NSInteger code;
@property (nonatomic, strong) Data * data;
//@property (nonatomic, strong) Extra * extra;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, assign) BOOL success;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end

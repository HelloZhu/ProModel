#import <UIKit/UIKit.h>

@interface Classification : NSObject

@property (nonatomic, assign) NSInteger classificationId;
@property (nonatomic, strong) NSString * classifyDesc;
@property (nonatomic, strong) NSString * logo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) NSInteger parentId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
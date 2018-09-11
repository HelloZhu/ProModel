#import <UIKit/UIKit.h>

@interface PagePartJobEvaluation : NSObject

@property (nonatomic, assign) NSInteger pageSize;
@property (nonatomic, strong) NSArray * results;
@property (nonatomic, assign) NSInteger totalPageNum;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
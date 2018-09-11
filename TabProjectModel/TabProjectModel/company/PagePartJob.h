#import <UIKit/UIKit.h>
#import "Result.h"

@interface PagePartJob : NSObject

@property (nonatomic, assign) NSInteger pageNum;
@property (nonatomic, assign) NSInteger pageSize;
@property (nonatomic, strong) NSArray * results;
@property (nonatomic, assign) NSInteger totalCount;
@property (nonatomic, assign) NSInteger totalPageNum;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
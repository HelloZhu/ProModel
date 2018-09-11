//
//	PagePartJobEvaluation.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "PagePartJobEvaluation.h"

NSString *const kPagePartJobEvaluationPageSize = @"pageSize";
NSString *const kPagePartJobEvaluationResults = @"results";
NSString *const kPagePartJobEvaluationTotalPageNum = @"totalPageNum";

@interface PagePartJobEvaluation ()
@end
@implementation PagePartJobEvaluation




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kPagePartJobEvaluationPageSize] isKindOfClass:[NSNull class]]){
		self.pageSize = [dictionary[kPagePartJobEvaluationPageSize] integerValue];
	}

	if(![dictionary[kPagePartJobEvaluationResults] isKindOfClass:[NSNull class]]){
		self.results = dictionary[kPagePartJobEvaluationResults];
	}	
	if(![dictionary[kPagePartJobEvaluationTotalPageNum] isKindOfClass:[NSNull class]]){
		self.totalPageNum = [dictionary[kPagePartJobEvaluationTotalPageNum] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kPagePartJobEvaluationPageSize] = @(self.pageSize);
	if(self.results != nil){
		dictionary[kPagePartJobEvaluationResults] = self.results;
	}
	dictionary[kPagePartJobEvaluationTotalPageNum] = @(self.totalPageNum);
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:@(self.pageSize) forKey:kPagePartJobEvaluationPageSize];	if(self.results != nil){
		[aCoder encodeObject:self.results forKey:kPagePartJobEvaluationResults];
	}
	[aCoder encodeObject:@(self.totalPageNum) forKey:kPagePartJobEvaluationTotalPageNum];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.pageSize = [[aDecoder decodeObjectForKey:kPagePartJobEvaluationPageSize] integerValue];
	self.results = [aDecoder decodeObjectForKey:kPagePartJobEvaluationResults];
	self.totalPageNum = [[aDecoder decodeObjectForKey:kPagePartJobEvaluationTotalPageNum] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	PagePartJobEvaluation *copy = [PagePartJobEvaluation new];

	copy.pageSize = self.pageSize;
	copy.results = [self.results copy];
	copy.totalPageNum = self.totalPageNum;

	return copy;
}
@end
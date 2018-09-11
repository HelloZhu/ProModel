//
//	PagePartJob.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "PagePartJob.h"

NSString *const kPagePartJobPageNum = @"pageNum";
NSString *const kPagePartJobPageSize = @"pageSize";
NSString *const kPagePartJobResults = @"results";
NSString *const kPagePartJobTotalCount = @"totalCount";
NSString *const kPagePartJobTotalPageNum = @"totalPageNum";

@interface PagePartJob ()
@end
@implementation PagePartJob




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kPagePartJobPageNum] isKindOfClass:[NSNull class]]){
		self.pageNum = [dictionary[kPagePartJobPageNum] integerValue];
	}

	if(![dictionary[kPagePartJobPageSize] isKindOfClass:[NSNull class]]){
		self.pageSize = [dictionary[kPagePartJobPageSize] integerValue];
	}

	if(dictionary[kPagePartJobResults] != nil && [dictionary[kPagePartJobResults] isKindOfClass:[NSArray class]]){
		NSArray * resultsDictionaries = dictionary[kPagePartJobResults];
		NSMutableArray * resultsItems = [NSMutableArray array];
		for(NSDictionary * resultsDictionary in resultsDictionaries){
			Result * resultsItem = [[Result alloc] initWithDictionary:resultsDictionary];
			[resultsItems addObject:resultsItem];
		}
		self.results = resultsItems;
	}
	if(![dictionary[kPagePartJobTotalCount] isKindOfClass:[NSNull class]]){
		self.totalCount = [dictionary[kPagePartJobTotalCount] integerValue];
	}

	if(![dictionary[kPagePartJobTotalPageNum] isKindOfClass:[NSNull class]]){
		self.totalPageNum = [dictionary[kPagePartJobTotalPageNum] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kPagePartJobPageNum] = @(self.pageNum);
	dictionary[kPagePartJobPageSize] = @(self.pageSize);
	if(self.results != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(Result * resultsElement in self.results){
			[dictionaryElements addObject:[resultsElement toDictionary]];
		}
		dictionary[kPagePartJobResults] = dictionaryElements;
	}
	dictionary[kPagePartJobTotalCount] = @(self.totalCount);
	dictionary[kPagePartJobTotalPageNum] = @(self.totalPageNum);
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
	[aCoder encodeObject:@(self.pageNum) forKey:kPagePartJobPageNum];	[aCoder encodeObject:@(self.pageSize) forKey:kPagePartJobPageSize];	if(self.results != nil){
		[aCoder encodeObject:self.results forKey:kPagePartJobResults];
	}
	[aCoder encodeObject:@(self.totalCount) forKey:kPagePartJobTotalCount];	[aCoder encodeObject:@(self.totalPageNum) forKey:kPagePartJobTotalPageNum];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.pageNum = [[aDecoder decodeObjectForKey:kPagePartJobPageNum] integerValue];
	self.pageSize = [[aDecoder decodeObjectForKey:kPagePartJobPageSize] integerValue];
	self.results = [aDecoder decodeObjectForKey:kPagePartJobResults];
	self.totalCount = [[aDecoder decodeObjectForKey:kPagePartJobTotalCount] integerValue];
	self.totalPageNum = [[aDecoder decodeObjectForKey:kPagePartJobTotalPageNum] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	PagePartJob *copy = [PagePartJob new];

	copy.pageNum = self.pageNum;
	copy.pageSize = self.pageSize;
	copy.results = [self.results copy];
	copy.totalCount = self.totalCount;
	copy.totalPageNum = self.totalPageNum;

	return copy;
}
@end
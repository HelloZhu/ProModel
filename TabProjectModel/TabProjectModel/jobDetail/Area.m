//
//	Area.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Area.h"

NSString *const kAreaAreaId = @"areaId";
NSString *const kAreaAreaName = @"areaName";

@interface Area ()
@end
@implementation Area




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAreaAreaId] isKindOfClass:[NSNull class]]){
		self.areaId = [dictionary[kAreaAreaId] integerValue];
	}

	if(![dictionary[kAreaAreaName] isKindOfClass:[NSNull class]]){
		self.areaName = dictionary[kAreaAreaName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kAreaAreaId] = @(self.areaId);
	if(self.areaName != nil){
		dictionary[kAreaAreaName] = self.areaName;
	}
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
	[aCoder encodeObject:@(self.areaId) forKey:kAreaAreaId];	if(self.areaName != nil){
		[aCoder encodeObject:self.areaName forKey:kAreaAreaName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.areaId = [[aDecoder decodeObjectForKey:kAreaAreaId] integerValue];
	self.areaName = [aDecoder decodeObjectForKey:kAreaAreaName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Area *copy = [Area new];

	copy.areaId = self.areaId;
	copy.areaName = [self.areaName copy];

	return copy;
}
@end
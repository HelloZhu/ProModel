//
//	Classification.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Classification.h"

NSString *const kClassificationClassificationId = @"classificationId";
NSString *const kClassificationClassifyDesc = @"classifyDesc";
NSString *const kClassificationLogo = @"logo";
NSString *const kClassificationName = @"name";
NSString *const kClassificationParentId = @"parentId";

@interface Classification ()
@end
@implementation Classification




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kClassificationClassificationId] isKindOfClass:[NSNull class]]){
		self.classificationId = [dictionary[kClassificationClassificationId] integerValue];
	}

	if(![dictionary[kClassificationClassifyDesc] isKindOfClass:[NSNull class]]){
		self.classifyDesc = dictionary[kClassificationClassifyDesc];
	}	
	if(![dictionary[kClassificationLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kClassificationLogo];
	}	
	if(![dictionary[kClassificationName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kClassificationName];
	}	
	if(![dictionary[kClassificationParentId] isKindOfClass:[NSNull class]]){
		self.parentId = [dictionary[kClassificationParentId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kClassificationClassificationId] = @(self.classificationId);
	if(self.classifyDesc != nil){
		dictionary[kClassificationClassifyDesc] = self.classifyDesc;
	}
	if(self.logo != nil){
		dictionary[kClassificationLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kClassificationName] = self.name;
	}
	dictionary[kClassificationParentId] = @(self.parentId);
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
	[aCoder encodeObject:@(self.classificationId) forKey:kClassificationClassificationId];	if(self.classifyDesc != nil){
		[aCoder encodeObject:self.classifyDesc forKey:kClassificationClassifyDesc];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kClassificationLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kClassificationName];
	}
	[aCoder encodeObject:@(self.parentId) forKey:kClassificationParentId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.classificationId = [[aDecoder decodeObjectForKey:kClassificationClassificationId] integerValue];
	self.classifyDesc = [aDecoder decodeObjectForKey:kClassificationClassifyDesc];
	self.logo = [aDecoder decodeObjectForKey:kClassificationLogo];
	self.name = [aDecoder decodeObjectForKey:kClassificationName];
	self.parentId = [[aDecoder decodeObjectForKey:kClassificationParentId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Classification *copy = [Classification new];

	copy.classificationId = self.classificationId;
	copy.classifyDesc = [self.classifyDesc copy];
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.parentId = self.parentId;

	return copy;
}
@end
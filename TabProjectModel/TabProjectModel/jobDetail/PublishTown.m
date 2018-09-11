//
//	PublishTown.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "PublishTown.h"

NSString *const kPublishTownTownId = @"townId";
NSString *const kPublishTownTownName = @"townName";

@interface PublishTown ()
@end
@implementation PublishTown




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kPublishTownTownId] isKindOfClass:[NSNull class]]){
		self.townId = [dictionary[kPublishTownTownId] integerValue];
	}

	if(![dictionary[kPublishTownTownName] isKindOfClass:[NSNull class]]){
		self.townName = dictionary[kPublishTownTownName];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kPublishTownTownId] = @(self.townId);
	if(self.townName != nil){
		dictionary[kPublishTownTownName] = self.townName;
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
	[aCoder encodeObject:@(self.townId) forKey:kPublishTownTownId];	if(self.townName != nil){
		[aCoder encodeObject:self.townName forKey:kPublishTownTownName];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.townId = [[aDecoder decodeObjectForKey:kPublishTownTownId] integerValue];
	self.townName = [aDecoder decodeObjectForKey:kPublishTownTownName];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	PublishTown *copy = [PublishTown new];

	copy.townId = self.townId;
	copy.townName = [self.townName copy];

	return copy;
}
@end
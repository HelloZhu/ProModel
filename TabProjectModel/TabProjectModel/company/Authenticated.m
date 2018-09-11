//
//	Authenticated.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Authenticated.h"

NSString *const kAuthenticatedKey = @"key";
NSString *const kAuthenticatedValue = @"value";

@interface Authenticated ()
@end
@implementation Authenticated




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAuthenticatedKey] isKindOfClass:[NSNull class]]){
		self.key = dictionary[kAuthenticatedKey];
	}	
	if(![dictionary[kAuthenticatedValue] isKindOfClass:[NSNull class]]){
		self.value = dictionary[kAuthenticatedValue];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.key != nil){
		dictionary[kAuthenticatedKey] = self.key;
	}
	if(self.value != nil){
		dictionary[kAuthenticatedValue] = self.value;
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
	if(self.key != nil){
		[aCoder encodeObject:self.key forKey:kAuthenticatedKey];
	}
	if(self.value != nil){
		[aCoder encodeObject:self.value forKey:kAuthenticatedValue];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.key = [aDecoder decodeObjectForKey:kAuthenticatedKey];
	self.value = [aDecoder decodeObjectForKey:kAuthenticatedValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Authenticated *copy = [Authenticated new];

	copy.key = [self.key copy];
	copy.value = [self.value copy];

	return copy;
}
@end
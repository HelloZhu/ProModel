//
//	User.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "User.h"

NSString *const kUserAccountId = @"accountId";
NSString *const kUserLogo = @"logo";
NSString *const kUserName = @"name";
NSString *const kUserUserId = @"userId";

@interface User ()
@end
@implementation User




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kUserAccountId] isKindOfClass:[NSNull class]]){
		self.accountId = [dictionary[kUserAccountId] integerValue];
	}

	if(![dictionary[kUserLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kUserLogo];
	}	
	if(![dictionary[kUserName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kUserName];
	}	
	if(![dictionary[kUserUserId] isKindOfClass:[NSNull class]]){
		self.userId = [dictionary[kUserUserId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kUserAccountId] = @(self.accountId);
	if(self.logo != nil){
		dictionary[kUserLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kUserName] = self.name;
	}
	dictionary[kUserUserId] = @(self.userId);
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
	[aCoder encodeObject:@(self.accountId) forKey:kUserAccountId];	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kUserLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kUserName];
	}
	[aCoder encodeObject:@(self.userId) forKey:kUserUserId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.accountId = [[aDecoder decodeObjectForKey:kUserAccountId] integerValue];
	self.logo = [aDecoder decodeObjectForKey:kUserLogo];
	self.name = [aDecoder decodeObjectForKey:kUserName];
	self.userId = [[aDecoder decodeObjectForKey:kUserUserId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	User *copy = [User new];

	copy.accountId = self.accountId;
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.userId = self.userId;

	return copy;
}
@end
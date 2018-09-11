//
//	Company.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Company.h"

NSString *const kCompanyAccountName = @"accountName";
NSString *const kCompanyCompanyId = @"companyId";
NSString *const kCompanyCompanyUuid = @"companyUuid";
NSString *const kCompanyCompanyWhite = @"companyWhite";
NSString *const kCompanyEnterpriseAuth = @"enterpriseAuth";
NSString *const kCompanyEnterpriseDeposit = @"enterpriseDeposit";
NSString *const kCompanyEvaluateStar = @"evaluateStar";
NSString *const kCompanyLogo = @"logo";
NSString *const kCompanyName = @"name";
NSString *const kCompanyProcessProportion = @"processProportion";
NSString *const kCompanyProcessTime = @"processTime";

@interface Company ()
@end
@implementation Company




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCompanyAccountName] isKindOfClass:[NSNull class]]){
		self.accountName = dictionary[kCompanyAccountName];
	}	
	if(![dictionary[kCompanyCompanyId] isKindOfClass:[NSNull class]]){
		self.companyId = [dictionary[kCompanyCompanyId] integerValue];
	}

	if(![dictionary[kCompanyCompanyUuid] isKindOfClass:[NSNull class]]){
		self.companyUuid = dictionary[kCompanyCompanyUuid];
	}	
	if(![dictionary[kCompanyCompanyWhite] isKindOfClass:[NSNull class]]){
		self.companyWhite = [dictionary[kCompanyCompanyWhite] boolValue];
	}

	if(![dictionary[kCompanyEnterpriseAuth] isKindOfClass:[NSNull class]]){
		self.enterpriseAuth = [dictionary[kCompanyEnterpriseAuth] boolValue];
	}

	if(![dictionary[kCompanyEnterpriseDeposit] isKindOfClass:[NSNull class]]){
		self.enterpriseDeposit = [dictionary[kCompanyEnterpriseDeposit] boolValue];
	}

	if(![dictionary[kCompanyEvaluateStar] isKindOfClass:[NSNull class]]){
		self.evaluateStar = dictionary[kCompanyEvaluateStar];
	}	
	if(![dictionary[kCompanyLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kCompanyLogo];
	}	
	if(![dictionary[kCompanyName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kCompanyName];
	}	
	if(![dictionary[kCompanyProcessProportion] isKindOfClass:[NSNull class]]){
		self.processProportion = dictionary[kCompanyProcessProportion];
	}	
	if(![dictionary[kCompanyProcessTime] isKindOfClass:[NSNull class]]){
		self.processTime = dictionary[kCompanyProcessTime];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.accountName != nil){
		dictionary[kCompanyAccountName] = self.accountName;
	}
	dictionary[kCompanyCompanyId] = @(self.companyId);
	if(self.companyUuid != nil){
		dictionary[kCompanyCompanyUuid] = self.companyUuid;
	}
	dictionary[kCompanyCompanyWhite] = @(self.companyWhite);
	dictionary[kCompanyEnterpriseAuth] = @(self.enterpriseAuth);
	dictionary[kCompanyEnterpriseDeposit] = @(self.enterpriseDeposit);
	if(self.evaluateStar != nil){
		dictionary[kCompanyEvaluateStar] = self.evaluateStar;
	}
	if(self.logo != nil){
		dictionary[kCompanyLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kCompanyName] = self.name;
	}
	if(self.processProportion != nil){
		dictionary[kCompanyProcessProportion] = self.processProportion;
	}
	if(self.processTime != nil){
		dictionary[kCompanyProcessTime] = self.processTime;
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
	if(self.accountName != nil){
		[aCoder encodeObject:self.accountName forKey:kCompanyAccountName];
	}
	[aCoder encodeObject:@(self.companyId) forKey:kCompanyCompanyId];	if(self.companyUuid != nil){
		[aCoder encodeObject:self.companyUuid forKey:kCompanyCompanyUuid];
	}
	[aCoder encodeObject:@(self.companyWhite) forKey:kCompanyCompanyWhite];	[aCoder encodeObject:@(self.enterpriseAuth) forKey:kCompanyEnterpriseAuth];	[aCoder encodeObject:@(self.enterpriseDeposit) forKey:kCompanyEnterpriseDeposit];	if(self.evaluateStar != nil){
		[aCoder encodeObject:self.evaluateStar forKey:kCompanyEvaluateStar];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kCompanyLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kCompanyName];
	}
	if(self.processProportion != nil){
		[aCoder encodeObject:self.processProportion forKey:kCompanyProcessProportion];
	}
	if(self.processTime != nil){
		[aCoder encodeObject:self.processTime forKey:kCompanyProcessTime];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.accountName = [aDecoder decodeObjectForKey:kCompanyAccountName];
	self.companyId = [[aDecoder decodeObjectForKey:kCompanyCompanyId] integerValue];
	self.companyUuid = [aDecoder decodeObjectForKey:kCompanyCompanyUuid];
	self.companyWhite = [[aDecoder decodeObjectForKey:kCompanyCompanyWhite] boolValue];
	self.enterpriseAuth = [[aDecoder decodeObjectForKey:kCompanyEnterpriseAuth] boolValue];
	self.enterpriseDeposit = [[aDecoder decodeObjectForKey:kCompanyEnterpriseDeposit] boolValue];
	self.evaluateStar = [aDecoder decodeObjectForKey:kCompanyEvaluateStar];
	self.logo = [aDecoder decodeObjectForKey:kCompanyLogo];
	self.name = [aDecoder decodeObjectForKey:kCompanyName];
	self.processProportion = [aDecoder decodeObjectForKey:kCompanyProcessProportion];
	self.processTime = [aDecoder decodeObjectForKey:kCompanyProcessTime];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Company *copy = [Company new];

	copy.accountName = [self.accountName copy];
	copy.companyId = self.companyId;
	copy.companyUuid = [self.companyUuid copy];
	copy.companyWhite = self.companyWhite;
	copy.enterpriseAuth = self.enterpriseAuth;
	copy.enterpriseDeposit = self.enterpriseDeposit;
	copy.evaluateStar = [self.evaluateStar copy];
	copy.logo = [self.logo copy];
	copy.name = [self.name copy];
	copy.processProportion = [self.processProportion copy];
	copy.processTime = [self.processTime copy];

	return copy;
}
@end
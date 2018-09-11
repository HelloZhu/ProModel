//
//	CompanyDetail.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CompanyDetail.h"

NSString *const kCompanyDetailCode = @"code";
NSString *const kCompanyDetailData = @"data";
NSString *const kCompanyDetailMsg = @"msg";
NSString *const kCompanyDetailSuccess = @"success";

@interface CompanyDetail ()
@end
@implementation CompanyDetail




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCompanyDetailCode] isKindOfClass:[NSNull class]]){
		self.code = [dictionary[kCompanyDetailCode] integerValue];
	}

	

	if(![dictionary[kCompanyDetailMsg] isKindOfClass:[NSNull class]]){
		self.msg = dictionary[kCompanyDetailMsg];
	}	
	if(![dictionary[kCompanyDetailSuccess] isKindOfClass:[NSNull class]]){
		self.success = [dictionary[kCompanyDetailSuccess] boolValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kCompanyDetailCode] = @(self.code);
	if(self.data != nil){
		dictionary[kCompanyDetailData] = [self.data toDictionary];
	}
	if(self.msg != nil){
		dictionary[kCompanyDetailMsg] = self.msg;
	}
	dictionary[kCompanyDetailSuccess] = @(self.success);
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
	[aCoder encodeObject:@(self.code) forKey:kCompanyDetailCode];	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kCompanyDetailData];
	}
	if(self.msg != nil){
		[aCoder encodeObject:self.msg forKey:kCompanyDetailMsg];
	}
	[aCoder encodeObject:@(self.success) forKey:kCompanyDetailSuccess];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.code = [[aDecoder decodeObjectForKey:kCompanyDetailCode] integerValue];
	self.data = [aDecoder decodeObjectForKey:kCompanyDetailData];
	self.msg = [aDecoder decodeObjectForKey:kCompanyDetailMsg];
	self.success = [[aDecoder decodeObjectForKey:kCompanyDetailSuccess] boolValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	CompanyDetail *copy = [CompanyDetail new];

	copy.code = self.code;
	copy.data = [self.data copy];
	copy.msg = [self.msg copy];
	copy.success = self.success;

	return copy;
}
@end

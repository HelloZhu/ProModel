//
//	StarCompany.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "StarCompany.h"

NSString *const kStarCompanyImage = @"image";
NSString *const kStarCompanyJumpKey = @"jumpKey";
NSString *const kStarCompanyParam = @"param";
NSString *const kStarCompanySubLogo = @"subLogo";
NSString *const kStarCompanySubTitle = @"subTitle";
NSString *const kStarCompanyTitle = @"title";

@interface StarCompany ()
@end
@implementation StarCompany




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kStarCompanyImage] isKindOfClass:[NSNull class]]){
		self.image = dictionary[kStarCompanyImage];
	}	
	if(![dictionary[kStarCompanyJumpKey] isKindOfClass:[NSNull class]]){
		self.jumpKey = dictionary[kStarCompanyJumpKey];
	}	
	if(![dictionary[kStarCompanyParam] isKindOfClass:[NSNull class]]){
		self.param = dictionary[kStarCompanyParam];
	}	
	if(![dictionary[kStarCompanySubLogo] isKindOfClass:[NSNull class]]){
		self.subLogo = dictionary[kStarCompanySubLogo];
	}	
	if(![dictionary[kStarCompanySubTitle] isKindOfClass:[NSNull class]]){
		self.subTitle = dictionary[kStarCompanySubTitle];
	}	
	if(![dictionary[kStarCompanyTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kStarCompanyTitle];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.image != nil){
		dictionary[kStarCompanyImage] = self.image;
	}
	if(self.jumpKey != nil){
		dictionary[kStarCompanyJumpKey] = self.jumpKey;
	}
	if(self.param != nil){
		dictionary[kStarCompanyParam] = self.param;
	}
	if(self.subLogo != nil){
		dictionary[kStarCompanySubLogo] = self.subLogo;
	}
	if(self.subTitle != nil){
		dictionary[kStarCompanySubTitle] = self.subTitle;
	}
	if(self.title != nil){
		dictionary[kStarCompanyTitle] = self.title;
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
	if(self.image != nil){
		[aCoder encodeObject:self.image forKey:kStarCompanyImage];
	}
	if(self.jumpKey != nil){
		[aCoder encodeObject:self.jumpKey forKey:kStarCompanyJumpKey];
	}
	if(self.param != nil){
		[aCoder encodeObject:self.param forKey:kStarCompanyParam];
	}
	if(self.subLogo != nil){
		[aCoder encodeObject:self.subLogo forKey:kStarCompanySubLogo];
	}
	if(self.subTitle != nil){
		[aCoder encodeObject:self.subTitle forKey:kStarCompanySubTitle];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kStarCompanyTitle];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.image = [aDecoder decodeObjectForKey:kStarCompanyImage];
	self.jumpKey = [aDecoder decodeObjectForKey:kStarCompanyJumpKey];
	self.param = [aDecoder decodeObjectForKey:kStarCompanyParam];
	self.subLogo = [aDecoder decodeObjectForKey:kStarCompanySubLogo];
	self.subTitle = [aDecoder decodeObjectForKey:kStarCompanySubTitle];
	self.title = [aDecoder decodeObjectForKey:kStarCompanyTitle];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	StarCompany *copy = [StarCompany new];

	copy.image = [self.image copy];
	copy.jumpKey = [self.jumpKey copy];
	copy.param = [self.param copy];
	copy.subLogo = [self.subLogo copy];
	copy.subTitle = [self.subTitle copy];
	copy.title = [self.title copy];

	return copy;
}
@end
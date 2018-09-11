//
//	qualityRecommends.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "qualityRecommends.h"

NSString *const kqualityRecommendsContentId = @"contentId";
NSString *const kqualityRecommendsImage = @"image";
NSString *const kqualityRecommendsJumpKey = @"jumpKey";
NSString *const kqualityRecommendsLocation = @"location";
NSString *const kqualityRecommendsParam = @"param";
NSString *const kqualityRecommendsResourceId = @"resourceId";
NSString *const kqualityRecommendsResourceType = @"resourceType";
NSString *const kqualityRecommendsSalaryDesc = @"salaryDesc";
NSString *const kqualityRecommendsShareImage = @"shareImage";
NSString *const kqualityRecommendsSubTitle = @"subTitle";
NSString *const kqualityRecommendsTagDesc = @"tagDesc";
NSString *const kqualityRecommendsTitle = @"title";
NSString *const kqualityRecommendsTownId = @"townId";


@implementation qualityRecommendsJob
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"resources" : [qualityRecommends class]};
}
@end

@interface qualityRecommends ()
@end
@implementation qualityRecommends




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kqualityRecommendsContentId] isKindOfClass:[NSNull class]]){
		self.contentId = [dictionary[kqualityRecommendsContentId] integerValue];
	}

	if(![dictionary[kqualityRecommendsImage] isKindOfClass:[NSNull class]]){
		self.image = dictionary[kqualityRecommendsImage];
	}	
	if(![dictionary[kqualityRecommendsJumpKey] isKindOfClass:[NSNull class]]){
		self.jumpKey = dictionary[kqualityRecommendsJumpKey];
	}	
	if(![dictionary[kqualityRecommendsLocation] isKindOfClass:[NSNull class]]){
		self.location = [dictionary[kqualityRecommendsLocation] integerValue];
	}

	if(![dictionary[kqualityRecommendsParam] isKindOfClass:[NSNull class]]){
		self.param = dictionary[kqualityRecommendsParam];
	}	
	if(![dictionary[kqualityRecommendsResourceId] isKindOfClass:[NSNull class]]){
		self.resourceId = [dictionary[kqualityRecommendsResourceId] integerValue];
	}

	if(![dictionary[kqualityRecommendsResourceType] isKindOfClass:[NSNull class]]){
		self.resourceType = [dictionary[kqualityRecommendsResourceType] integerValue];
	}

	if(![dictionary[kqualityRecommendsSalaryDesc] isKindOfClass:[NSNull class]]){
		self.salaryDesc = dictionary[kqualityRecommendsSalaryDesc];
	}	
	if(![dictionary[kqualityRecommendsShareImage] isKindOfClass:[NSNull class]]){
		self.shareImage = dictionary[kqualityRecommendsShareImage];
	}	
	if(![dictionary[kqualityRecommendsSubTitle] isKindOfClass:[NSNull class]]){
		self.subTitle = dictionary[kqualityRecommendsSubTitle];
	}	
	if(![dictionary[kqualityRecommendsTagDesc] isKindOfClass:[NSNull class]]){
		self.tagDesc = dictionary[kqualityRecommendsTagDesc];
	}	
	if(![dictionary[kqualityRecommendsTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kqualityRecommendsTitle];
	}	
	if(![dictionary[kqualityRecommendsTownId] isKindOfClass:[NSNull class]]){
		self.townId = [dictionary[kqualityRecommendsTownId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kqualityRecommendsContentId] = @(self.contentId);
	if(self.image != nil){
		dictionary[kqualityRecommendsImage] = self.image;
	}
	if(self.jumpKey != nil){
		dictionary[kqualityRecommendsJumpKey] = self.jumpKey;
	}
	dictionary[kqualityRecommendsLocation] = @(self.location);
	if(self.param != nil){
		dictionary[kqualityRecommendsParam] = self.param;
	}
	dictionary[kqualityRecommendsResourceId] = @(self.resourceId);
	dictionary[kqualityRecommendsResourceType] = @(self.resourceType);
	if(self.salaryDesc != nil){
		dictionary[kqualityRecommendsSalaryDesc] = self.salaryDesc;
	}
	if(self.shareImage != nil){
		dictionary[kqualityRecommendsShareImage] = self.shareImage;
	}
	if(self.subTitle != nil){
		dictionary[kqualityRecommendsSubTitle] = self.subTitle;
	}
	if(self.tagDesc != nil){
		dictionary[kqualityRecommendsTagDesc] = self.tagDesc;
	}
	if(self.title != nil){
		dictionary[kqualityRecommendsTitle] = self.title;
	}
	dictionary[kqualityRecommendsTownId] = @(self.townId);
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
	[aCoder encodeObject:@(self.contentId) forKey:kqualityRecommendsContentId];	if(self.image != nil){
		[aCoder encodeObject:self.image forKey:kqualityRecommendsImage];
	}
	if(self.jumpKey != nil){
		[aCoder encodeObject:self.jumpKey forKey:kqualityRecommendsJumpKey];
	}
	[aCoder encodeObject:@(self.location) forKey:kqualityRecommendsLocation];	if(self.param != nil){
		[aCoder encodeObject:self.param forKey:kqualityRecommendsParam];
	}
	[aCoder encodeObject:@(self.resourceId) forKey:kqualityRecommendsResourceId];	[aCoder encodeObject:@(self.resourceType) forKey:kqualityRecommendsResourceType];	if(self.salaryDesc != nil){
		[aCoder encodeObject:self.salaryDesc forKey:kqualityRecommendsSalaryDesc];
	}
	if(self.shareImage != nil){
		[aCoder encodeObject:self.shareImage forKey:kqualityRecommendsShareImage];
	}
	if(self.subTitle != nil){
		[aCoder encodeObject:self.subTitle forKey:kqualityRecommendsSubTitle];
	}
	if(self.tagDesc != nil){
		[aCoder encodeObject:self.tagDesc forKey:kqualityRecommendsTagDesc];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kqualityRecommendsTitle];
	}
	[aCoder encodeObject:@(self.townId) forKey:kqualityRecommendsTownId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.contentId = [[aDecoder decodeObjectForKey:kqualityRecommendsContentId] integerValue];
	self.image = [aDecoder decodeObjectForKey:kqualityRecommendsImage];
	self.jumpKey = [aDecoder decodeObjectForKey:kqualityRecommendsJumpKey];
	self.location = [[aDecoder decodeObjectForKey:kqualityRecommendsLocation] integerValue];
	self.param = [aDecoder decodeObjectForKey:kqualityRecommendsParam];
	self.resourceId = [[aDecoder decodeObjectForKey:kqualityRecommendsResourceId] integerValue];
	self.resourceType = [[aDecoder decodeObjectForKey:kqualityRecommendsResourceType] integerValue];
	self.salaryDesc = [aDecoder decodeObjectForKey:kqualityRecommendsSalaryDesc];
	self.shareImage = [aDecoder decodeObjectForKey:kqualityRecommendsShareImage];
	self.subTitle = [aDecoder decodeObjectForKey:kqualityRecommendsSubTitle];
	self.tagDesc = [aDecoder decodeObjectForKey:kqualityRecommendsTagDesc];
	self.title = [aDecoder decodeObjectForKey:kqualityRecommendsTitle];
	self.townId = [[aDecoder decodeObjectForKey:kqualityRecommendsTownId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	qualityRecommends *copy = [qualityRecommends new];

	copy.contentId = self.contentId;
	copy.image = [self.image copy];
	copy.jumpKey = [self.jumpKey copy];
	copy.location = self.location;
	copy.param = [self.param copy];
	copy.resourceId = self.resourceId;
	copy.resourceType = self.resourceType;
	copy.salaryDesc = [self.salaryDesc copy];
	copy.shareImage = [self.shareImage copy];
	copy.subTitle = [self.subTitle copy];
	copy.tagDesc = [self.tagDesc copy];
	copy.title = [self.title copy];
	copy.townId = self.townId;

	return copy;
}
@end

//
//	interestJob.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "interestJob.h"

NSString *const kinterestJobImage = @"image";
NSString *const kinterestJobJumpKey = @"jumpKey";
NSString *const kinterestJobParam = @"param";
NSString *const kinterestJobResourceId = @"resourceId";
NSString *const kinterestJobResourceType = @"resourceType";
NSString *const kinterestJobShareImage = @"shareImage";
NSString *const kinterestJobSubTitle = @"subTitle";
NSString *const kinterestJobTagDesc = @"tagDesc";
NSString *const kinterestJobTitle = @"title";
NSString *const kinterestJobTownId = @"townId";

@implementation interestJobs
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"resources" : [interestJob class]};
}
@end

@interface interestJob ()
@end
@implementation interestJob




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kinterestJobImage] isKindOfClass:[NSNull class]]){
		self.image = dictionary[kinterestJobImage];
	}	
	if(![dictionary[kinterestJobJumpKey] isKindOfClass:[NSNull class]]){
		self.jumpKey = dictionary[kinterestJobJumpKey];
	}	
	if(![dictionary[kinterestJobParam] isKindOfClass:[NSNull class]]){
		self.param = dictionary[kinterestJobParam];
	}	
	if(![dictionary[kinterestJobResourceId] isKindOfClass:[NSNull class]]){
		self.resourceId = [dictionary[kinterestJobResourceId] integerValue];
	}

	if(![dictionary[kinterestJobResourceType] isKindOfClass:[NSNull class]]){
		self.resourceType = [dictionary[kinterestJobResourceType] integerValue];
	}

	if(![dictionary[kinterestJobShareImage] isKindOfClass:[NSNull class]]){
		self.shareImage = dictionary[kinterestJobShareImage];
	}	
	if(![dictionary[kinterestJobSubTitle] isKindOfClass:[NSNull class]]){
		self.subTitle = dictionary[kinterestJobSubTitle];
	}	
	if(![dictionary[kinterestJobTagDesc] isKindOfClass:[NSNull class]]){
		self.tagDesc = dictionary[kinterestJobTagDesc];
	}	
	if(![dictionary[kinterestJobTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kinterestJobTitle];
	}	
	if(![dictionary[kinterestJobTownId] isKindOfClass:[NSNull class]]){
		self.townId = [dictionary[kinterestJobTownId] integerValue];
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
		dictionary[kinterestJobImage] = self.image;
	}
	if(self.jumpKey != nil){
		dictionary[kinterestJobJumpKey] = self.jumpKey;
	}
	if(self.param != nil){
		dictionary[kinterestJobParam] = self.param;
	}
	dictionary[kinterestJobResourceId] = @(self.resourceId);
	dictionary[kinterestJobResourceType] = @(self.resourceType);
	if(self.shareImage != nil){
		dictionary[kinterestJobShareImage] = self.shareImage;
	}
	if(self.subTitle != nil){
		dictionary[kinterestJobSubTitle] = self.subTitle;
	}
	if(self.tagDesc != nil){
		dictionary[kinterestJobTagDesc] = self.tagDesc;
	}
	if(self.title != nil){
		dictionary[kinterestJobTitle] = self.title;
	}
	dictionary[kinterestJobTownId] = @(self.townId);
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
		[aCoder encodeObject:self.image forKey:kinterestJobImage];
	}
	if(self.jumpKey != nil){
		[aCoder encodeObject:self.jumpKey forKey:kinterestJobJumpKey];
	}
	if(self.param != nil){
		[aCoder encodeObject:self.param forKey:kinterestJobParam];
	}
	[aCoder encodeObject:@(self.resourceId) forKey:kinterestJobResourceId];	[aCoder encodeObject:@(self.resourceType) forKey:kinterestJobResourceType];	if(self.shareImage != nil){
		[aCoder encodeObject:self.shareImage forKey:kinterestJobShareImage];
	}
	if(self.subTitle != nil){
		[aCoder encodeObject:self.subTitle forKey:kinterestJobSubTitle];
	}
	if(self.tagDesc != nil){
		[aCoder encodeObject:self.tagDesc forKey:kinterestJobTagDesc];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kinterestJobTitle];
	}
	[aCoder encodeObject:@(self.townId) forKey:kinterestJobTownId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.image = [aDecoder decodeObjectForKey:kinterestJobImage];
	self.jumpKey = [aDecoder decodeObjectForKey:kinterestJobJumpKey];
	self.param = [aDecoder decodeObjectForKey:kinterestJobParam];
	self.resourceId = [[aDecoder decodeObjectForKey:kinterestJobResourceId] integerValue];
	self.resourceType = [[aDecoder decodeObjectForKey:kinterestJobResourceType] integerValue];
	self.shareImage = [aDecoder decodeObjectForKey:kinterestJobShareImage];
	self.subTitle = [aDecoder decodeObjectForKey:kinterestJobSubTitle];
	self.tagDesc = [aDecoder decodeObjectForKey:kinterestJobTagDesc];
	self.title = [aDecoder decodeObjectForKey:kinterestJobTitle];
	self.townId = [[aDecoder decodeObjectForKey:kinterestJobTownId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	interestJob *copy = [interestJob new];

	copy.image = [self.image copy];
	copy.jumpKey = [self.jumpKey copy];
	copy.param = [self.param copy];
	copy.resourceId = self.resourceId;
	copy.resourceType = self.resourceType;
	copy.shareImage = [self.shareImage copy];
	copy.subTitle = [self.subTitle copy];
	copy.tagDesc = [self.tagDesc copy];
	copy.title = [self.title copy];
	copy.townId = self.townId;

	return copy;
}
@end

//
//	LocalJob.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LocalJob.h"

@implementation LocalJobs
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"resources" : [LocalJob class]};
}
@end

NSString *const kLocalJobDistance = @"distance";
NSString *const kLocalJobImage = @"image";
NSString *const kLocalJobJumpKey = @"jumpKey";
NSString *const kLocalJobParam = @"param";
NSString *const kLocalJobResourceId = @"resourceId";
NSString *const kLocalJobSalaryDesc = @"salaryDesc";
NSString *const kLocalJobSubContent = @"subContent";
NSString *const kLocalJobSubLogo = @"subLogo";
NSString *const kLocalJobSubTitle = @"subTitle";
NSString *const kLocalJobTitle = @"title";

@interface LocalJob ()
@end
@implementation LocalJob




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLocalJobDistance] isKindOfClass:[NSNull class]]){
		self.distance = dictionary[kLocalJobDistance];
	}	
	if(![dictionary[kLocalJobImage] isKindOfClass:[NSNull class]]){
		self.image = dictionary[kLocalJobImage];
	}	
	if(![dictionary[kLocalJobJumpKey] isKindOfClass:[NSNull class]]){
		self.jumpKey = dictionary[kLocalJobJumpKey];
	}	
	if(![dictionary[kLocalJobParam] isKindOfClass:[NSNull class]]){
		self.param = dictionary[kLocalJobParam];
	}	
	if(![dictionary[kLocalJobResourceId] isKindOfClass:[NSNull class]]){
		self.resourceId = [dictionary[kLocalJobResourceId] integerValue];
	}

	if(![dictionary[kLocalJobSalaryDesc] isKindOfClass:[NSNull class]]){
		self.salaryDesc = dictionary[kLocalJobSalaryDesc];
	}	
	if(![dictionary[kLocalJobSubContent] isKindOfClass:[NSNull class]]){
		self.subContent = dictionary[kLocalJobSubContent];
	}	
	if(![dictionary[kLocalJobSubLogo] isKindOfClass:[NSNull class]]){
		self.subLogo = dictionary[kLocalJobSubLogo];
	}	
	if(![dictionary[kLocalJobSubTitle] isKindOfClass:[NSNull class]]){
		self.subTitle = dictionary[kLocalJobSubTitle];
	}	
	if(![dictionary[kLocalJobTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kLocalJobTitle];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.distance != nil){
		dictionary[kLocalJobDistance] = self.distance;
	}
	if(self.image != nil){
		dictionary[kLocalJobImage] = self.image;
	}
	if(self.jumpKey != nil){
		dictionary[kLocalJobJumpKey] = self.jumpKey;
	}
	if(self.param != nil){
		dictionary[kLocalJobParam] = self.param;
	}
	dictionary[kLocalJobResourceId] = @(self.resourceId);
	if(self.salaryDesc != nil){
		dictionary[kLocalJobSalaryDesc] = self.salaryDesc;
	}
	if(self.subContent != nil){
		dictionary[kLocalJobSubContent] = self.subContent;
	}
	if(self.subLogo != nil){
		dictionary[kLocalJobSubLogo] = self.subLogo;
	}
	if(self.subTitle != nil){
		dictionary[kLocalJobSubTitle] = self.subTitle;
	}
	if(self.title != nil){
		dictionary[kLocalJobTitle] = self.title;
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
	if(self.distance != nil){
		[aCoder encodeObject:self.distance forKey:kLocalJobDistance];
	}
	if(self.image != nil){
		[aCoder encodeObject:self.image forKey:kLocalJobImage];
	}
	if(self.jumpKey != nil){
		[aCoder encodeObject:self.jumpKey forKey:kLocalJobJumpKey];
	}
	if(self.param != nil){
		[aCoder encodeObject:self.param forKey:kLocalJobParam];
	}
	[aCoder encodeObject:@(self.resourceId) forKey:kLocalJobResourceId];	if(self.salaryDesc != nil){
		[aCoder encodeObject:self.salaryDesc forKey:kLocalJobSalaryDesc];
	}
	if(self.subContent != nil){
		[aCoder encodeObject:self.subContent forKey:kLocalJobSubContent];
	}
	if(self.subLogo != nil){
		[aCoder encodeObject:self.subLogo forKey:kLocalJobSubLogo];
	}
	if(self.subTitle != nil){
		[aCoder encodeObject:self.subTitle forKey:kLocalJobSubTitle];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kLocalJobTitle];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.distance = [aDecoder decodeObjectForKey:kLocalJobDistance];
	self.image = [aDecoder decodeObjectForKey:kLocalJobImage];
	self.jumpKey = [aDecoder decodeObjectForKey:kLocalJobJumpKey];
	self.param = [aDecoder decodeObjectForKey:kLocalJobParam];
	self.resourceId = [[aDecoder decodeObjectForKey:kLocalJobResourceId] integerValue];
	self.salaryDesc = [aDecoder decodeObjectForKey:kLocalJobSalaryDesc];
	self.subContent = [aDecoder decodeObjectForKey:kLocalJobSubContent];
	self.subLogo = [aDecoder decodeObjectForKey:kLocalJobSubLogo];
	self.subTitle = [aDecoder decodeObjectForKey:kLocalJobSubTitle];
	self.title = [aDecoder decodeObjectForKey:kLocalJobTitle];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LocalJob *copy = [LocalJob new];

	copy.distance = [self.distance copy];
	copy.image = [self.image copy];
	copy.jumpKey = [self.jumpKey copy];
	copy.param = [self.param copy];
	copy.resourceId = self.resourceId;
	copy.salaryDesc = [self.salaryDesc copy];
	copy.subContent = [self.subContent copy];
	copy.subLogo = [self.subLogo copy];
	copy.subTitle = [self.subTitle copy];
	copy.title = [self.title copy];

	return copy;
}
@end

//
//	JobCenter.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "JobCenter.h"

NSString *const kJobCenterAddressDetail = @"addressDetail";
NSString *const kJobCenterBrandName = @"brandName";
NSString *const kJobCenterClearingForm = @"clearingForm";
NSString *const kJobCenterCompanyLogo = @"companyLogo";
NSString *const kJobCenterHotScore = @"hotScore";
NSString *const kJobCenterJobDate = @"jobDate";
NSString *const kJobCenterJobPattern = @"jobPattern";
NSString *const kJobCenterObjectType = @"objectType";
NSString *const kJobCenterPartJobId = @"partJobId";
NSString *const kJobCenterPriority = @"priority";
NSString *const kJobCenterQingtuanbaoProctionUrl = @"qingtuanbaoProctionUrl";
NSString *const kJobCenterSalary = @"salary";
NSString *const kJobCenterSalaryType = @"salaryType";
NSString *const kJobCenterTitle = @"title";

@implementation JobCenters
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"results" : [JobCenter class]};
}

@end

@interface JobCenter ()
@end
@implementation JobCenter

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"resources" : [ClearingForm class]};
}


/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kJobCenterAddressDetail] isKindOfClass:[NSNull class]]){
		self.addressDetail = dictionary[kJobCenterAddressDetail];
	}	
	if(![dictionary[kJobCenterBrandName] isKindOfClass:[NSNull class]]){
		self.brandName = dictionary[kJobCenterBrandName];
	}	
	if(![dictionary[kJobCenterClearingForm] isKindOfClass:[NSNull class]]){
		self.clearingForm = [[ClearingForm alloc] initWithDictionary:dictionary[kJobCenterClearingForm]];
	}

	if(![dictionary[kJobCenterCompanyLogo] isKindOfClass:[NSNull class]]){
		self.companyLogo = dictionary[kJobCenterCompanyLogo];
	}	
	if(![dictionary[kJobCenterHotScore] isKindOfClass:[NSNull class]]){
		self.hotScore = [dictionary[kJobCenterHotScore] integerValue];
	}

	if(![dictionary[kJobCenterJobDate] isKindOfClass:[NSNull class]]){
		self.jobDate = dictionary[kJobCenterJobDate];
	}	
	if(![dictionary[kJobCenterJobPattern] isKindOfClass:[NSNull class]]){
		self.jobPattern = [[ClearingForm alloc] initWithDictionary:dictionary[kJobCenterJobPattern]];
	}

	if(![dictionary[kJobCenterObjectType] isKindOfClass:[NSNull class]]){
		self.objectType = [dictionary[kJobCenterObjectType] integerValue];
	}

	if(![dictionary[kJobCenterPartJobId] isKindOfClass:[NSNull class]]){
		self.partJobId = [dictionary[kJobCenterPartJobId] integerValue];
	}

	if(![dictionary[kJobCenterPriority] isKindOfClass:[NSNull class]]){
		self.priority = dictionary[kJobCenterPriority];
	}	
	if(![dictionary[kJobCenterQingtuanbaoProctionUrl] isKindOfClass:[NSNull class]]){
		self.qingtuanbaoProctionUrl = dictionary[kJobCenterQingtuanbaoProctionUrl];
	}	
	if(![dictionary[kJobCenterSalary] isKindOfClass:[NSNull class]]){
		self.salary = dictionary[kJobCenterSalary];
	}	
	if(![dictionary[kJobCenterSalaryType] isKindOfClass:[NSNull class]]){
		self.salaryType = [dictionary[kJobCenterSalaryType] integerValue];
	}

	if(![dictionary[kJobCenterTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kJobCenterTitle];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.addressDetail != nil){
		dictionary[kJobCenterAddressDetail] = self.addressDetail;
	}
	if(self.brandName != nil){
		dictionary[kJobCenterBrandName] = self.brandName;
	}
	if(self.clearingForm != nil){
		dictionary[kJobCenterClearingForm] = [self.clearingForm toDictionary];
	}
	if(self.companyLogo != nil){
		dictionary[kJobCenterCompanyLogo] = self.companyLogo;
	}
	dictionary[kJobCenterHotScore] = @(self.hotScore);
	if(self.jobDate != nil){
		dictionary[kJobCenterJobDate] = self.jobDate;
	}
	if(self.jobPattern != nil){
		dictionary[kJobCenterJobPattern] = [self.jobPattern toDictionary];
	}
	dictionary[kJobCenterObjectType] = @(self.objectType);
	dictionary[kJobCenterPartJobId] = @(self.partJobId);
	if(self.priority != nil){
		dictionary[kJobCenterPriority] = self.priority;
	}
	if(self.qingtuanbaoProctionUrl != nil){
		dictionary[kJobCenterQingtuanbaoProctionUrl] = self.qingtuanbaoProctionUrl;
	}
	if(self.salary != nil){
		dictionary[kJobCenterSalary] = self.salary;
	}
	dictionary[kJobCenterSalaryType] = @(self.salaryType);
	if(self.title != nil){
		dictionary[kJobCenterTitle] = self.title;
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
	if(self.addressDetail != nil){
		[aCoder encodeObject:self.addressDetail forKey:kJobCenterAddressDetail];
	}
	if(self.brandName != nil){
		[aCoder encodeObject:self.brandName forKey:kJobCenterBrandName];
	}
	if(self.clearingForm != nil){
		[aCoder encodeObject:self.clearingForm forKey:kJobCenterClearingForm];
	}
	if(self.companyLogo != nil){
		[aCoder encodeObject:self.companyLogo forKey:kJobCenterCompanyLogo];
	}
	[aCoder encodeObject:@(self.hotScore) forKey:kJobCenterHotScore];	if(self.jobDate != nil){
		[aCoder encodeObject:self.jobDate forKey:kJobCenterJobDate];
	}
	if(self.jobPattern != nil){
		[aCoder encodeObject:self.jobPattern forKey:kJobCenterJobPattern];
	}
	[aCoder encodeObject:@(self.objectType) forKey:kJobCenterObjectType];	[aCoder encodeObject:@(self.partJobId) forKey:kJobCenterPartJobId];	if(self.priority != nil){
		[aCoder encodeObject:self.priority forKey:kJobCenterPriority];
	}
	if(self.qingtuanbaoProctionUrl != nil){
		[aCoder encodeObject:self.qingtuanbaoProctionUrl forKey:kJobCenterQingtuanbaoProctionUrl];
	}
	if(self.salary != nil){
		[aCoder encodeObject:self.salary forKey:kJobCenterSalary];
	}
	[aCoder encodeObject:@(self.salaryType) forKey:kJobCenterSalaryType];	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kJobCenterTitle];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addressDetail = [aDecoder decodeObjectForKey:kJobCenterAddressDetail];
	self.brandName = [aDecoder decodeObjectForKey:kJobCenterBrandName];
	self.clearingForm = [aDecoder decodeObjectForKey:kJobCenterClearingForm];
	self.companyLogo = [aDecoder decodeObjectForKey:kJobCenterCompanyLogo];
	self.hotScore = [[aDecoder decodeObjectForKey:kJobCenterHotScore] integerValue];
	self.jobDate = [aDecoder decodeObjectForKey:kJobCenterJobDate];
	self.jobPattern = [aDecoder decodeObjectForKey:kJobCenterJobPattern];
	self.objectType = [[aDecoder decodeObjectForKey:kJobCenterObjectType] integerValue];
	self.partJobId = [[aDecoder decodeObjectForKey:kJobCenterPartJobId] integerValue];
	self.priority = [aDecoder decodeObjectForKey:kJobCenterPriority];
	self.qingtuanbaoProctionUrl = [aDecoder decodeObjectForKey:kJobCenterQingtuanbaoProctionUrl];
	self.salary = [aDecoder decodeObjectForKey:kJobCenterSalary];
	self.salaryType = [[aDecoder decodeObjectForKey:kJobCenterSalaryType] integerValue];
	self.title = [aDecoder decodeObjectForKey:kJobCenterTitle];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	JobCenter *copy = [JobCenter new];

	copy.addressDetail = [self.addressDetail copy];
	copy.brandName = [self.brandName copy];
	copy.clearingForm = [self.clearingForm copy];
	copy.companyLogo = [self.companyLogo copy];
	copy.hotScore = self.hotScore;
	copy.jobDate = [self.jobDate copy];
	copy.jobPattern = [self.jobPattern copy];
	copy.objectType = self.objectType;
	copy.partJobId = self.partJobId;
	copy.priority = [self.priority copy];
	copy.qingtuanbaoProctionUrl = [self.qingtuanbaoProctionUrl copy];
	copy.salary = [self.salary copy];
	copy.salaryType = self.salaryType;
	copy.title = [self.title copy];

	return copy;
}
@end

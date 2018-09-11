//
//	Result.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Result.h"

NSString *const kResultAddressBuilding = @"addressBuilding";
NSString *const kResultAddressDetail = @"addressDetail";
NSString *const kResultAreaId = @"areaId";
NSString *const kResultClearingForm = @"clearingForm";
NSString *const kResultCompanyType = @"companyType";
NSString *const kResultEntryCount = @"entryCount";
NSString *const kResultJobCount = @"jobCount";
NSString *const kResultJobDate = @"jobDate";
NSString *const kResultJobTime = @"jobTime";
NSString *const kResultLogo = @"logo";
NSString *const kResultPartJobId = @"partJobId";
NSString *const kResultSalary = @"salary";
NSString *const kResultSalaryTimeUnit = @"salaryTimeUnit";
NSString *const kResultSalaryType = @"salaryType";
NSString *const kResultSalaryUnit = @"salaryUnit";
NSString *const kResultStatus = @"status";
NSString *const kResultTitle = @"title";
NSString *const kResultTownId = @"townId";

@interface Result ()
@end
@implementation Result




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kResultAddressBuilding] isKindOfClass:[NSNull class]]){
		self.addressBuilding = dictionary[kResultAddressBuilding];
	}	
	if(![dictionary[kResultAddressDetail] isKindOfClass:[NSNull class]]){
		self.addressDetail = dictionary[kResultAddressDetail];
	}	
	if(![dictionary[kResultAreaId] isKindOfClass:[NSNull class]]){
		self.areaId = [dictionary[kResultAreaId] integerValue];
	}

	if(![dictionary[kResultClearingForm] isKindOfClass:[NSNull class]]){
		self.clearingForm = [[Authenticated alloc] initWithDictionary:dictionary[kResultClearingForm]];
	}

	if(![dictionary[kResultCompanyType] isKindOfClass:[NSNull class]]){
		self.companyType = [[Authenticated alloc] initWithDictionary:dictionary[kResultCompanyType]];
	}

	if(![dictionary[kResultEntryCount] isKindOfClass:[NSNull class]]){
		self.entryCount = [dictionary[kResultEntryCount] integerValue];
	}

	if(![dictionary[kResultJobCount] isKindOfClass:[NSNull class]]){
		self.jobCount = [dictionary[kResultJobCount] integerValue];
	}

	if(![dictionary[kResultJobDate] isKindOfClass:[NSNull class]]){
		self.jobDate = dictionary[kResultJobDate];
	}	
	if(![dictionary[kResultJobTime] isKindOfClass:[NSNull class]]){
		self.jobTime = dictionary[kResultJobTime];
	}	
	if(![dictionary[kResultLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kResultLogo];
	}	
	if(![dictionary[kResultPartJobId] isKindOfClass:[NSNull class]]){
		self.partJobId = [dictionary[kResultPartJobId] integerValue];
	}

	if(![dictionary[kResultSalary] isKindOfClass:[NSNull class]]){
		self.salary = dictionary[kResultSalary];
	}	
	if(![dictionary[kResultSalaryTimeUnit] isKindOfClass:[NSNull class]]){
		self.salaryTimeUnit = [[Authenticated alloc] initWithDictionary:dictionary[kResultSalaryTimeUnit]];
	}

	if(![dictionary[kResultSalaryType] isKindOfClass:[NSNull class]]){
		self.salaryType = [dictionary[kResultSalaryType] integerValue];
	}

	if(![dictionary[kResultSalaryUnit] isKindOfClass:[NSNull class]]){
		self.salaryUnit = [dictionary[kResultSalaryUnit] floatValue];
	}

	if(![dictionary[kResultStatus] isKindOfClass:[NSNull class]]){
		self.status = [dictionary[kResultStatus] integerValue];
	}

	if(![dictionary[kResultTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kResultTitle];
	}	
	if(![dictionary[kResultTownId] isKindOfClass:[NSNull class]]){
		self.townId = [dictionary[kResultTownId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.addressBuilding != nil){
		dictionary[kResultAddressBuilding] = self.addressBuilding;
	}
	if(self.addressDetail != nil){
		dictionary[kResultAddressDetail] = self.addressDetail;
	}
	dictionary[kResultAreaId] = @(self.areaId);
	if(self.clearingForm != nil){
		dictionary[kResultClearingForm] = [self.clearingForm toDictionary];
	}
	if(self.companyType != nil){
		dictionary[kResultCompanyType] = [self.companyType toDictionary];
	}
	dictionary[kResultEntryCount] = @(self.entryCount);
	dictionary[kResultJobCount] = @(self.jobCount);
	if(self.jobDate != nil){
		dictionary[kResultJobDate] = self.jobDate;
	}
	if(self.jobTime != nil){
		dictionary[kResultJobTime] = self.jobTime;
	}
	if(self.logo != nil){
		dictionary[kResultLogo] = self.logo;
	}
	dictionary[kResultPartJobId] = @(self.partJobId);
	if(self.salary != nil){
		dictionary[kResultSalary] = self.salary;
	}
	if(self.salaryTimeUnit != nil){
		dictionary[kResultSalaryTimeUnit] = [self.salaryTimeUnit toDictionary];
	}
	dictionary[kResultSalaryType] = @(self.salaryType);
	dictionary[kResultSalaryUnit] = @(self.salaryUnit);
	dictionary[kResultStatus] = @(self.status);
	if(self.title != nil){
		dictionary[kResultTitle] = self.title;
	}
	dictionary[kResultTownId] = @(self.townId);
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
	if(self.addressBuilding != nil){
		[aCoder encodeObject:self.addressBuilding forKey:kResultAddressBuilding];
	}
	if(self.addressDetail != nil){
		[aCoder encodeObject:self.addressDetail forKey:kResultAddressDetail];
	}
	[aCoder encodeObject:@(self.areaId) forKey:kResultAreaId];	if(self.clearingForm != nil){
		[aCoder encodeObject:self.clearingForm forKey:kResultClearingForm];
	}
	if(self.companyType != nil){
		[aCoder encodeObject:self.companyType forKey:kResultCompanyType];
	}
	[aCoder encodeObject:@(self.entryCount) forKey:kResultEntryCount];	[aCoder encodeObject:@(self.jobCount) forKey:kResultJobCount];	if(self.jobDate != nil){
		[aCoder encodeObject:self.jobDate forKey:kResultJobDate];
	}
	if(self.jobTime != nil){
		[aCoder encodeObject:self.jobTime forKey:kResultJobTime];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kResultLogo];
	}
	[aCoder encodeObject:@(self.partJobId) forKey:kResultPartJobId];	if(self.salary != nil){
		[aCoder encodeObject:self.salary forKey:kResultSalary];
	}
	if(self.salaryTimeUnit != nil){
		[aCoder encodeObject:self.salaryTimeUnit forKey:kResultSalaryTimeUnit];
	}
	[aCoder encodeObject:@(self.salaryType) forKey:kResultSalaryType];	[aCoder encodeObject:@(self.salaryUnit) forKey:kResultSalaryUnit];	[aCoder encodeObject:@(self.status) forKey:kResultStatus];	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kResultTitle];
	}
	[aCoder encodeObject:@(self.townId) forKey:kResultTownId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.addressBuilding = [aDecoder decodeObjectForKey:kResultAddressBuilding];
	self.addressDetail = [aDecoder decodeObjectForKey:kResultAddressDetail];
	self.areaId = [[aDecoder decodeObjectForKey:kResultAreaId] integerValue];
	self.clearingForm = [aDecoder decodeObjectForKey:kResultClearingForm];
	self.companyType = [aDecoder decodeObjectForKey:kResultCompanyType];
	self.entryCount = [[aDecoder decodeObjectForKey:kResultEntryCount] integerValue];
	self.jobCount = [[aDecoder decodeObjectForKey:kResultJobCount] integerValue];
	self.jobDate = [aDecoder decodeObjectForKey:kResultJobDate];
	self.jobTime = [aDecoder decodeObjectForKey:kResultJobTime];
	self.logo = [aDecoder decodeObjectForKey:kResultLogo];
	self.partJobId = [[aDecoder decodeObjectForKey:kResultPartJobId] integerValue];
	self.salary = [aDecoder decodeObjectForKey:kResultSalary];
	self.salaryTimeUnit = [aDecoder decodeObjectForKey:kResultSalaryTimeUnit];
	self.salaryType = [[aDecoder decodeObjectForKey:kResultSalaryType] integerValue];
	self.salaryUnit = [[aDecoder decodeObjectForKey:kResultSalaryUnit] floatValue];
	self.status = [[aDecoder decodeObjectForKey:kResultStatus] integerValue];
	self.title = [aDecoder decodeObjectForKey:kResultTitle];
	self.townId = [[aDecoder decodeObjectForKey:kResultTownId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Result *copy = [Result new];

	copy.addressBuilding = [self.addressBuilding copy];
	copy.addressDetail = [self.addressDetail copy];
	copy.areaId = self.areaId;
	copy.clearingForm = [self.clearingForm copy];
	copy.companyType = [self.companyType copy];
	copy.entryCount = self.entryCount;
	copy.jobCount = self.jobCount;
	copy.jobDate = [self.jobDate copy];
	copy.jobTime = [self.jobTime copy];
	copy.logo = [self.logo copy];
	copy.partJobId = self.partJobId;
	copy.salary = [self.salary copy];
	copy.salaryTimeUnit = [self.salaryTimeUnit copy];
	copy.salaryType = self.salaryType;
	copy.salaryUnit = self.salaryUnit;
	copy.status = self.status;
	copy.title = [self.title copy];
	copy.townId = self.townId;

	return copy;
}
@end
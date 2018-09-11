//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CompanyData.h"

NSString *const kDataAccountAuthorizedManagers = @"accountAuthorizedManagers";
NSString *const kDataAddress = @"address";
NSString *const kDataAreaId = @"areaId";
NSString *const kDataAuthenticated = @"authenticated";
NSString *const kDataBackgroundImage = @"backgroundImage";
NSString *const kDataBrandName = @"brandName";
NSString *const kDataChargerName = @"chargerName";
NSString *const kDataCompanyId = @"companyId";
NSString *const kDataCompanyScale = @"companyScale";
NSString *const kDataCompanyShareContent = @"companyShareContent";
NSString *const kDataCompanyShareLogo = @"companyShareLogo";
NSString *const kDataCompanyShareTitle = @"companyShareTitle";
NSString *const kDataCompanyShareUrl = @"companyShareUrl";
NSString *const kDataCompanyType = @"companyType";
NSString *const kDataEmail = @"email";
NSString *const kDataEvaluationStar = @"evaluationStar";
NSString *const kDataIndustry = @"industry";
NSString *const kDataIntroduction = @"introduction";
NSString *const kDataLogo = @"logo";
NSString *const kDataName = @"name";
NSString *const kDataPagePartJobEvaluations = @"pagePartJobEvaluations";
NSString *const kDataPagePartJobs = @"pagePartJobs";
NSString *const kDataPagePractices = @"pagePractices";
NSString *const kDataPosition = @"position";
NSString *const kDataProcessProportion = @"processProportion";
NSString *const kDataProcessTime = @"processTime";
NSString *const kDataQq = @"qq";
NSString *const kDataShareContentClassifys = @"shareContentClassifys";
NSString *const kDataTownId = @"townId";

@interface CompanyData ()
@end
@implementation CompanyData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kDataAccountAuthorizedManagers] isKindOfClass:[NSNull class]]){
		self.accountAuthorizedManagers = dictionary[kDataAccountAuthorizedManagers];
	}	
	if(![dictionary[kDataAddress] isKindOfClass:[NSNull class]]){
		self.address = dictionary[kDataAddress];
	}	
	if(![dictionary[kDataAreaId] isKindOfClass:[NSNull class]]){
		self.areaId = [dictionary[kDataAreaId] integerValue];
	}

	if(![dictionary[kDataAuthenticated] isKindOfClass:[NSNull class]]){
		self.authenticated = [[Authenticated alloc] initWithDictionary:dictionary[kDataAuthenticated]];
	}

	if(![dictionary[kDataBackgroundImage] isKindOfClass:[NSNull class]]){
		self.backgroundImage = dictionary[kDataBackgroundImage];
	}	
	if(![dictionary[kDataBrandName] isKindOfClass:[NSNull class]]){
		self.brandName = dictionary[kDataBrandName];
	}	
	if(![dictionary[kDataChargerName] isKindOfClass:[NSNull class]]){
		self.chargerName = dictionary[kDataChargerName];
	}	
	if(![dictionary[kDataCompanyId] isKindOfClass:[NSNull class]]){
		self.companyId = [dictionary[kDataCompanyId] integerValue];
	}

	if(![dictionary[kDataCompanyScale] isKindOfClass:[NSNull class]]){
		self.companyScale = [[Authenticated alloc] initWithDictionary:dictionary[kDataCompanyScale]];
	}

	if(![dictionary[kDataCompanyShareContent] isKindOfClass:[NSNull class]]){
		self.companyShareContent = dictionary[kDataCompanyShareContent];
	}	
	if(![dictionary[kDataCompanyShareLogo] isKindOfClass:[NSNull class]]){
		self.companyShareLogo = dictionary[kDataCompanyShareLogo];
	}	
	if(![dictionary[kDataCompanyShareTitle] isKindOfClass:[NSNull class]]){
		self.companyShareTitle = dictionary[kDataCompanyShareTitle];
	}	
	if(![dictionary[kDataCompanyShareUrl] isKindOfClass:[NSNull class]]){
		self.companyShareUrl = dictionary[kDataCompanyShareUrl];
	}	
	if(![dictionary[kDataCompanyType] isKindOfClass:[NSNull class]]){
		self.companyType = [[Authenticated alloc] initWithDictionary:dictionary[kDataCompanyType]];
	}

	if(![dictionary[kDataEmail] isKindOfClass:[NSNull class]]){
		self.email = dictionary[kDataEmail];
	}	
	if(![dictionary[kDataEvaluationStar] isKindOfClass:[NSNull class]]){
		self.evaluationStar = [[EvaluationStar alloc] initWithDictionary:dictionary[kDataEvaluationStar]];
	}

	if(![dictionary[kDataIndustry] isKindOfClass:[NSNull class]]){
		self.industry = [[Authenticated alloc] initWithDictionary:dictionary[kDataIndustry]];
	}

	if(![dictionary[kDataIntroduction] isKindOfClass:[NSNull class]]){
		self.introduction = dictionary[kDataIntroduction];
	}	
	if(![dictionary[kDataLogo] isKindOfClass:[NSNull class]]){
		self.logo = dictionary[kDataLogo];
	}	
	if(![dictionary[kDataName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kDataName];
	}	
	if(![dictionary[kDataPagePartJobEvaluations] isKindOfClass:[NSNull class]]){
		self.pagePartJobEvaluations = [[PagePartJobEvaluation alloc] initWithDictionary:dictionary[kDataPagePartJobEvaluations]];
	}

	if(![dictionary[kDataPagePartJobs] isKindOfClass:[NSNull class]]){
		self.pagePartJobs = [[PagePartJob alloc] initWithDictionary:dictionary[kDataPagePartJobs]];
	}

	if(![dictionary[kDataPagePractices] isKindOfClass:[NSNull class]]){
		self.pagePractices = [[PagePartJobEvaluation alloc] initWithDictionary:dictionary[kDataPagePractices]];
	}

	if(![dictionary[kDataPosition] isKindOfClass:[NSNull class]]){
		self.position = dictionary[kDataPosition];
	}	
	if(![dictionary[kDataProcessProportion] isKindOfClass:[NSNull class]]){
		self.processProportion = dictionary[kDataProcessProportion];
	}	
	if(![dictionary[kDataProcessTime] isKindOfClass:[NSNull class]]){
		self.processTime = dictionary[kDataProcessTime];
	}	
	if(![dictionary[kDataQq] isKindOfClass:[NSNull class]]){
		self.qq = dictionary[kDataQq];
	}	
	if(![dictionary[kDataShareContentClassifys] isKindOfClass:[NSNull class]]){
		self.shareContentClassifys = [[ShareContentClassify alloc] initWithDictionary:dictionary[kDataShareContentClassifys]];
	}

	if(![dictionary[kDataTownId] isKindOfClass:[NSNull class]]){
		self.townId = [dictionary[kDataTownId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.accountAuthorizedManagers != nil){
		dictionary[kDataAccountAuthorizedManagers] = self.accountAuthorizedManagers;
	}
	if(self.address != nil){
		dictionary[kDataAddress] = self.address;
	}
	dictionary[kDataAreaId] = @(self.areaId);
	if(self.authenticated != nil){
		dictionary[kDataAuthenticated] = [self.authenticated toDictionary];
	}
	if(self.backgroundImage != nil){
		dictionary[kDataBackgroundImage] = self.backgroundImage;
	}
	if(self.brandName != nil){
		dictionary[kDataBrandName] = self.brandName;
	}
	if(self.chargerName != nil){
		dictionary[kDataChargerName] = self.chargerName;
	}
	dictionary[kDataCompanyId] = @(self.companyId);
	if(self.companyScale != nil){
		dictionary[kDataCompanyScale] = [self.companyScale toDictionary];
	}
	if(self.companyShareContent != nil){
		dictionary[kDataCompanyShareContent] = self.companyShareContent;
	}
	if(self.companyShareLogo != nil){
		dictionary[kDataCompanyShareLogo] = self.companyShareLogo;
	}
	if(self.companyShareTitle != nil){
		dictionary[kDataCompanyShareTitle] = self.companyShareTitle;
	}
	if(self.companyShareUrl != nil){
		dictionary[kDataCompanyShareUrl] = self.companyShareUrl;
	}
	if(self.companyType != nil){
		dictionary[kDataCompanyType] = [self.companyType toDictionary];
	}
	if(self.email != nil){
		dictionary[kDataEmail] = self.email;
	}
	if(self.evaluationStar != nil){
		dictionary[kDataEvaluationStar] = [self.evaluationStar toDictionary];
	}
	if(self.industry != nil){
		dictionary[kDataIndustry] = [self.industry toDictionary];
	}
	if(self.introduction != nil){
		dictionary[kDataIntroduction] = self.introduction;
	}
	if(self.logo != nil){
		dictionary[kDataLogo] = self.logo;
	}
	if(self.name != nil){
		dictionary[kDataName] = self.name;
	}
	if(self.pagePartJobEvaluations != nil){
		dictionary[kDataPagePartJobEvaluations] = [self.pagePartJobEvaluations toDictionary];
	}
	if(self.pagePartJobs != nil){
		dictionary[kDataPagePartJobs] = [self.pagePartJobs toDictionary];
	}
	if(self.pagePractices != nil){
		dictionary[kDataPagePractices] = [self.pagePractices toDictionary];
	}
	if(self.position != nil){
		dictionary[kDataPosition] = self.position;
	}
	if(self.processProportion != nil){
		dictionary[kDataProcessProportion] = self.processProportion;
	}
	if(self.processTime != nil){
		dictionary[kDataProcessTime] = self.processTime;
	}
	if(self.qq != nil){
		dictionary[kDataQq] = self.qq;
	}
	if(self.shareContentClassifys != nil){
		dictionary[kDataShareContentClassifys] = [self.shareContentClassifys toDictionary];
	}
	dictionary[kDataTownId] = @(self.townId);
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
	if(self.accountAuthorizedManagers != nil){
		[aCoder encodeObject:self.accountAuthorizedManagers forKey:kDataAccountAuthorizedManagers];
	}
	if(self.address != nil){
		[aCoder encodeObject:self.address forKey:kDataAddress];
	}
	[aCoder encodeObject:@(self.areaId) forKey:kDataAreaId];	if(self.authenticated != nil){
		[aCoder encodeObject:self.authenticated forKey:kDataAuthenticated];
	}
	if(self.backgroundImage != nil){
		[aCoder encodeObject:self.backgroundImage forKey:kDataBackgroundImage];
	}
	if(self.brandName != nil){
		[aCoder encodeObject:self.brandName forKey:kDataBrandName];
	}
	if(self.chargerName != nil){
		[aCoder encodeObject:self.chargerName forKey:kDataChargerName];
	}
	[aCoder encodeObject:@(self.companyId) forKey:kDataCompanyId];	if(self.companyScale != nil){
		[aCoder encodeObject:self.companyScale forKey:kDataCompanyScale];
	}
	if(self.companyShareContent != nil){
		[aCoder encodeObject:self.companyShareContent forKey:kDataCompanyShareContent];
	}
	if(self.companyShareLogo != nil){
		[aCoder encodeObject:self.companyShareLogo forKey:kDataCompanyShareLogo];
	}
	if(self.companyShareTitle != nil){
		[aCoder encodeObject:self.companyShareTitle forKey:kDataCompanyShareTitle];
	}
	if(self.companyShareUrl != nil){
		[aCoder encodeObject:self.companyShareUrl forKey:kDataCompanyShareUrl];
	}
	if(self.companyType != nil){
		[aCoder encodeObject:self.companyType forKey:kDataCompanyType];
	}
	if(self.email != nil){
		[aCoder encodeObject:self.email forKey:kDataEmail];
	}
	if(self.evaluationStar != nil){
		[aCoder encodeObject:self.evaluationStar forKey:kDataEvaluationStar];
	}
	if(self.industry != nil){
		[aCoder encodeObject:self.industry forKey:kDataIndustry];
	}
	if(self.introduction != nil){
		[aCoder encodeObject:self.introduction forKey:kDataIntroduction];
	}
	if(self.logo != nil){
		[aCoder encodeObject:self.logo forKey:kDataLogo];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kDataName];
	}
	if(self.pagePartJobEvaluations != nil){
		[aCoder encodeObject:self.pagePartJobEvaluations forKey:kDataPagePartJobEvaluations];
	}
	if(self.pagePartJobs != nil){
		[aCoder encodeObject:self.pagePartJobs forKey:kDataPagePartJobs];
	}
	if(self.pagePractices != nil){
		[aCoder encodeObject:self.pagePractices forKey:kDataPagePractices];
	}
	if(self.position != nil){
		[aCoder encodeObject:self.position forKey:kDataPosition];
	}
	if(self.processProportion != nil){
		[aCoder encodeObject:self.processProportion forKey:kDataProcessProportion];
	}
	if(self.processTime != nil){
		[aCoder encodeObject:self.processTime forKey:kDataProcessTime];
	}
	if(self.qq != nil){
		[aCoder encodeObject:self.qq forKey:kDataQq];
	}
	if(self.shareContentClassifys != nil){
		[aCoder encodeObject:self.shareContentClassifys forKey:kDataShareContentClassifys];
	}
	[aCoder encodeObject:@(self.townId) forKey:kDataTownId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.accountAuthorizedManagers = [aDecoder decodeObjectForKey:kDataAccountAuthorizedManagers];
	self.address = [aDecoder decodeObjectForKey:kDataAddress];
	self.areaId = [[aDecoder decodeObjectForKey:kDataAreaId] integerValue];
	self.authenticated = [aDecoder decodeObjectForKey:kDataAuthenticated];
	self.backgroundImage = [aDecoder decodeObjectForKey:kDataBackgroundImage];
	self.brandName = [aDecoder decodeObjectForKey:kDataBrandName];
	self.chargerName = [aDecoder decodeObjectForKey:kDataChargerName];
	self.companyId = [[aDecoder decodeObjectForKey:kDataCompanyId] integerValue];
	self.companyScale = [aDecoder decodeObjectForKey:kDataCompanyScale];
	self.companyShareContent = [aDecoder decodeObjectForKey:kDataCompanyShareContent];
	self.companyShareLogo = [aDecoder decodeObjectForKey:kDataCompanyShareLogo];
	self.companyShareTitle = [aDecoder decodeObjectForKey:kDataCompanyShareTitle];
	self.companyShareUrl = [aDecoder decodeObjectForKey:kDataCompanyShareUrl];
	self.companyType = [aDecoder decodeObjectForKey:kDataCompanyType];
	self.email = [aDecoder decodeObjectForKey:kDataEmail];
	self.evaluationStar = [aDecoder decodeObjectForKey:kDataEvaluationStar];
	self.industry = [aDecoder decodeObjectForKey:kDataIndustry];
	self.introduction = [aDecoder decodeObjectForKey:kDataIntroduction];
	self.logo = [aDecoder decodeObjectForKey:kDataLogo];
	self.name = [aDecoder decodeObjectForKey:kDataName];
	self.pagePartJobEvaluations = [aDecoder decodeObjectForKey:kDataPagePartJobEvaluations];
	self.pagePartJobs = [aDecoder decodeObjectForKey:kDataPagePartJobs];
	self.pagePractices = [aDecoder decodeObjectForKey:kDataPagePractices];
	self.position = [aDecoder decodeObjectForKey:kDataPosition];
	self.processProportion = [aDecoder decodeObjectForKey:kDataProcessProportion];
	self.processTime = [aDecoder decodeObjectForKey:kDataProcessTime];
	self.qq = [aDecoder decodeObjectForKey:kDataQq];
	self.shareContentClassifys = [aDecoder decodeObjectForKey:kDataShareContentClassifys];
	self.townId = [[aDecoder decodeObjectForKey:kDataTownId] integerValue];
	return self;

}


@end

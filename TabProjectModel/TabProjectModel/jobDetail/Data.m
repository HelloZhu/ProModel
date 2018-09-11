//
//	Data.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Data.h"

NSString *const kDataAddressDetail = @"addressDetail";
NSString *const kDataApplyBalance = @"applyBalance";
NSString *const kDataArea = @"area";
NSString *const kDataBonus = @"bonus";
NSString *const kDataButtonStatus = @"buttonStatus";
NSString *const kDataCategory = @"category";
NSString *const kDataClassification = @"classification";
NSString *const kDataClearingForm = @"clearingForm";
NSString *const kDataCompany = @"company";
NSString *const kDataCompanyType = @"companyType";
NSString *const kDataContentPrompt = @"contentPrompt";
NSString *const kDataCycleType = @"cycleType";
NSString *const kDataDeadline = @"deadline";
NSString *const kDataDiploma = @"diploma";
NSString *const kDataEntryCount = @"entryCount";
NSString *const kDataExpendApplyNum = @"expendApplyNum";
NSString *const kDataHeightRequire = @"heightRequire";
NSString *const kDataInterviewAddress = @"interviewAddress";
NSString *const kDataInterviewTime = @"interviewTime";
NSString *const kDataJobCount = @"jobCount";
NSString *const kDataJobDate = @"jobDate";
NSString *const kDataJobDateDesc = @"jobDateDesc";
NSString *const kDataJobDesc = @"jobDesc";
NSString *const kDataJobPhotos = @"jobPhotos";
NSString *const kDataJobTime = @"jobTime";
NSString *const kDataJobTypeId = @"jobTypeId";
NSString *const kDataLatitude = @"latitude";
NSString *const kDataLogo = @"logo";
NSString *const kDataLongitude = @"longitude";
NSString *const kDataMiniAppShare = @"miniAppShare";
NSString *const kDataNeedHealth = @"needHealth";
NSString *const kDataNeedHeight = @"needHeight";
NSString *const kDataNeedInterview = @"needInterview";
NSString *const kDataPartJobApplyStatus = @"partJobApplyStatus";
NSString *const kDataPartJobId = @"partJobId";
NSString *const kDataPublishTown = @"publishTown";
NSString *const kDataQingtuanbaoProctionUrl = @"qingtuanbaoProctionUrl";
NSString *const kDataSalary = @"salary";
NSString *const kDataSalaryType = @"salaryType";
NSString *const kDataSalaryVO = @"salaryVO";
NSString *const kDataSexRequire = @"sexRequire";
NSString *const kDataShareContentClassifys = @"shareContentClassifys";
NSString *const kDataShareUrl = @"shareUrl";
NSString *const kDataStatus = @"status";
NSString *const kDataTitle = @"title";
NSString *const kDataUsers = @"users";
NSString *const kDataWelfare = @"welfare";

@interface Data ()
@end
@implementation Data

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"users":[User class]};
}


/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */

@end

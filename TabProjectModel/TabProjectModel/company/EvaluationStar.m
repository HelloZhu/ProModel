//
//	EvaluationStar.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "EvaluationStar.h"

NSString *const kEvaluationStarSettlementEfficiencyStar = @"settlementEfficiencyStar";
NSString *const kEvaluationStarStarCount = @"starCount";
NSString *const kEvaluationStarWorkContentStar = @"workContentStar";
NSString *const kEvaluationStarWorkEnvironmentStar = @"workEnvironmentStar";

@interface EvaluationStar ()
@end
@implementation EvaluationStar




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kEvaluationStarSettlementEfficiencyStar] isKindOfClass:[NSNull class]]){
		self.settlementEfficiencyStar = dictionary[kEvaluationStarSettlementEfficiencyStar];
	}	
	if(![dictionary[kEvaluationStarStarCount] isKindOfClass:[NSNull class]]){
		self.starCount = dictionary[kEvaluationStarStarCount];
	}	
	if(![dictionary[kEvaluationStarWorkContentStar] isKindOfClass:[NSNull class]]){
		self.workContentStar = dictionary[kEvaluationStarWorkContentStar];
	}	
	if(![dictionary[kEvaluationStarWorkEnvironmentStar] isKindOfClass:[NSNull class]]){
		self.workEnvironmentStar = dictionary[kEvaluationStarWorkEnvironmentStar];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.settlementEfficiencyStar != nil){
		dictionary[kEvaluationStarSettlementEfficiencyStar] = self.settlementEfficiencyStar;
	}
	if(self.starCount != nil){
		dictionary[kEvaluationStarStarCount] = self.starCount;
	}
	if(self.workContentStar != nil){
		dictionary[kEvaluationStarWorkContentStar] = self.workContentStar;
	}
	if(self.workEnvironmentStar != nil){
		dictionary[kEvaluationStarWorkEnvironmentStar] = self.workEnvironmentStar;
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
	if(self.settlementEfficiencyStar != nil){
		[aCoder encodeObject:self.settlementEfficiencyStar forKey:kEvaluationStarSettlementEfficiencyStar];
	}
	if(self.starCount != nil){
		[aCoder encodeObject:self.starCount forKey:kEvaluationStarStarCount];
	}
	if(self.workContentStar != nil){
		[aCoder encodeObject:self.workContentStar forKey:kEvaluationStarWorkContentStar];
	}
	if(self.workEnvironmentStar != nil){
		[aCoder encodeObject:self.workEnvironmentStar forKey:kEvaluationStarWorkEnvironmentStar];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.settlementEfficiencyStar = [aDecoder decodeObjectForKey:kEvaluationStarSettlementEfficiencyStar];
	self.starCount = [aDecoder decodeObjectForKey:kEvaluationStarStarCount];
	self.workContentStar = [aDecoder decodeObjectForKey:kEvaluationStarWorkContentStar];
	self.workEnvironmentStar = [aDecoder decodeObjectForKey:kEvaluationStarWorkEnvironmentStar];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	EvaluationStar *copy = [EvaluationStar new];

	copy.settlementEfficiencyStar = [self.settlementEfficiencyStar copy];
	copy.starCount = [self.starCount copy];
	copy.workContentStar = [self.workContentStar copy];
	copy.workEnvironmentStar = [self.workEnvironmentStar copy];

	return copy;
}
@end
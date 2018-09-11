//
//	SalaryVO.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "SalaryVO.h"

NSString *const kSalaryVOScalar = @"scalar";
NSString *const kSalaryVOType = @"type";
NSString *const kSalaryVOUnit = @"unit";

@interface SalaryVO ()
@end
@implementation SalaryVO




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kSalaryVOScalar] isKindOfClass:[NSNull class]]){
		self.scalar = dictionary[kSalaryVOScalar];
	}	
	if(![dictionary[kSalaryVOType] isKindOfClass:[NSNull class]]){
		self.type = [dictionary[kSalaryVOType] integerValue];
	}

	if(![dictionary[kSalaryVOUnit] isKindOfClass:[NSNull class]]){
		self.unit = dictionary[kSalaryVOUnit];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.scalar != nil){
		dictionary[kSalaryVOScalar] = self.scalar;
	}
	dictionary[kSalaryVOType] = @(self.type);
	if(self.unit != nil){
		dictionary[kSalaryVOUnit] = self.unit;
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
	if(self.scalar != nil){
		[aCoder encodeObject:self.scalar forKey:kSalaryVOScalar];
	}
	[aCoder encodeObject:@(self.type) forKey:kSalaryVOType];	if(self.unit != nil){
		[aCoder encodeObject:self.unit forKey:kSalaryVOUnit];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.scalar = [aDecoder decodeObjectForKey:kSalaryVOScalar];
	self.type = [[aDecoder decodeObjectForKey:kSalaryVOType] integerValue];
	self.unit = [aDecoder decodeObjectForKey:kSalaryVOUnit];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	SalaryVO *copy = [SalaryVO new];

	copy.scalar = [self.scalar copy];
	copy.type = self.type;
	copy.unit = [self.unit copy];

	return copy;
}
@end
//
//	ClearingForm.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ClearingForm.h"

NSString *const kClearingFormKey = @"key";
NSString *const kClearingFormValue = @"value";

@interface ClearingForm ()
@end
@implementation ClearingForm




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kClearingFormKey] isKindOfClass:[NSNull class]]){
		self.key = dictionary[kClearingFormKey];
	}	
	if(![dictionary[kClearingFormValue] isKindOfClass:[NSNull class]]){
		self.value = dictionary[kClearingFormValue];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.key != nil){
		dictionary[kClearingFormKey] = self.key;
	}
	if(self.value != nil){
		dictionary[kClearingFormValue] = self.value;
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
	if(self.key != nil){
		[aCoder encodeObject:self.key forKey:kClearingFormKey];
	}
	if(self.value != nil){
		[aCoder encodeObject:self.value forKey:kClearingFormValue];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.key = [aDecoder decodeObjectForKey:kClearingFormKey];
	self.value = [aDecoder decodeObjectForKey:kClearingFormValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	ClearingForm *copy = [ClearingForm new];

	copy.key = [self.key copy];
	copy.value = [self.value copy];

	return copy;
}
@end
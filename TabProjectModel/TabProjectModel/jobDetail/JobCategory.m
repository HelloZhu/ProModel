//
//	Category.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "JobCategory.h"

NSString *const kCategoryKey = @"key";
NSString *const kCategoryValue = @"value";


@implementation JobCategory




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kCategoryKey] isKindOfClass:[NSNull class]]){
		self.key = dictionary[kCategoryKey];
	}	
	if(![dictionary[kCategoryValue] isKindOfClass:[NSNull class]]){
		self.value = dictionary[kCategoryValue];
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
		dictionary[kCategoryKey] = self.key;
	}
	if(self.value != nil){
		dictionary[kCategoryValue] = self.value;
	}
	return dictionary;

}


@end

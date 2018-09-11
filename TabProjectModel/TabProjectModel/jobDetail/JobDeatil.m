//
//	JobDeatil.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "JobDeatil.h"

NSString *const kJobDeatilCode = @"code";
NSString *const kJobDeatilData = @"data";
NSString *const kJobDeatilExtra = @"extra";
NSString *const kJobDeatilMsg = @"msg";
NSString *const kJobDeatilSuccess = @"success";

@interface JobDeatil ()
@end
@implementation JobDeatil


+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"data" : [Data class]};
}

/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kJobDeatilCode] isKindOfClass:[NSNull class]]){
		self.code = [dictionary[kJobDeatilCode] integerValue];
	}

	if(![dictionary[kJobDeatilData] isKindOfClass:[NSNull class]]){
		self.data = [[Data alloc] initWithDictionary:dictionary[kJobDeatilData]];
	}


	if(![dictionary[kJobDeatilMsg] isKindOfClass:[NSNull class]]){
		self.msg = dictionary[kJobDeatilMsg];
	}	
	if(![dictionary[kJobDeatilSuccess] isKindOfClass:[NSNull class]]){
		self.success = [dictionary[kJobDeatilSuccess] boolValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kJobDeatilCode] = @(self.code);
	if(self.data != nil){
		dictionary[kJobDeatilData] = [self.data toDictionary];
	}
	
	if(self.msg != nil){
		dictionary[kJobDeatilMsg] = self.msg;
	}
	dictionary[kJobDeatilSuccess] = @(self.success);
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
	[aCoder encodeObject:@(self.code) forKey:kJobDeatilCode];	if(self.data != nil){
		[aCoder encodeObject:self.data forKey:kJobDeatilData];
	}

	if(self.msg != nil){
		[aCoder encodeObject:self.msg forKey:kJobDeatilMsg];
	}
	[aCoder encodeObject:@(self.success) forKey:kJobDeatilSuccess];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.code = [[aDecoder decodeObjectForKey:kJobDeatilCode] integerValue];
	self.data = [aDecoder decodeObjectForKey:kJobDeatilData];
	self.msg = [aDecoder decodeObjectForKey:kJobDeatilMsg];
	self.success = [[aDecoder decodeObjectForKey:kJobDeatilSuccess] boolValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	JobDeatil *copy = [JobDeatil new];

	copy.code = self.code;
	copy.data = [self.data copy];
	copy.msg = [self.msg copy];
	copy.success = self.success;

	return copy;
}
@end

//
//	ShareContentClassify.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ShareContentClassify.h"

NSString *const kShareContentClassifyQQShare = @"qQShare";
NSString *const kShareContentClassifyQQTalk = @"qQTalk";
NSString *const kShareContentClassifySinaWb = @"sinaWb";
NSString *const kShareContentClassifyWeixinFriend = @"weixinFriend";
NSString *const kShareContentClassifyWeixinTalk = @"weixinTalk";

@interface ShareContentClassify ()
@end
@implementation ShareContentClassify




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kShareContentClassifyQQShare] isKindOfClass:[NSNull class]]){
		self.qQShare = dictionary[kShareContentClassifyQQShare];
	}	
	if(![dictionary[kShareContentClassifyQQTalk] isKindOfClass:[NSNull class]]){
		self.qQTalk = dictionary[kShareContentClassifyQQTalk];
	}	
	if(![dictionary[kShareContentClassifySinaWb] isKindOfClass:[NSNull class]]){
		self.sinaWb = dictionary[kShareContentClassifySinaWb];
	}	
	if(![dictionary[kShareContentClassifyWeixinFriend] isKindOfClass:[NSNull class]]){
		self.weixinFriend = dictionary[kShareContentClassifyWeixinFriend];
	}	
	if(![dictionary[kShareContentClassifyWeixinTalk] isKindOfClass:[NSNull class]]){
		self.weixinTalk = dictionary[kShareContentClassifyWeixinTalk];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.qQShare != nil){
		dictionary[kShareContentClassifyQQShare] = self.qQShare;
	}
	if(self.qQTalk != nil){
		dictionary[kShareContentClassifyQQTalk] = self.qQTalk;
	}
	if(self.sinaWb != nil){
		dictionary[kShareContentClassifySinaWb] = self.sinaWb;
	}
	if(self.weixinFriend != nil){
		dictionary[kShareContentClassifyWeixinFriend] = self.weixinFriend;
	}
	if(self.weixinTalk != nil){
		dictionary[kShareContentClassifyWeixinTalk] = self.weixinTalk;
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
	if(self.qQShare != nil){
		[aCoder encodeObject:self.qQShare forKey:kShareContentClassifyQQShare];
	}
	if(self.qQTalk != nil){
		[aCoder encodeObject:self.qQTalk forKey:kShareContentClassifyQQTalk];
	}
	if(self.sinaWb != nil){
		[aCoder encodeObject:self.sinaWb forKey:kShareContentClassifySinaWb];
	}
	if(self.weixinFriend != nil){
		[aCoder encodeObject:self.weixinFriend forKey:kShareContentClassifyWeixinFriend];
	}
	if(self.weixinTalk != nil){
		[aCoder encodeObject:self.weixinTalk forKey:kShareContentClassifyWeixinTalk];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.qQShare = [aDecoder decodeObjectForKey:kShareContentClassifyQQShare];
	self.qQTalk = [aDecoder decodeObjectForKey:kShareContentClassifyQQTalk];
	self.sinaWb = [aDecoder decodeObjectForKey:kShareContentClassifySinaWb];
	self.weixinFriend = [aDecoder decodeObjectForKey:kShareContentClassifyWeixinFriend];
	self.weixinTalk = [aDecoder decodeObjectForKey:kShareContentClassifyWeixinTalk];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	ShareContentClassify *copy = [ShareContentClassify new];

	copy.qQShare = [self.qQShare copy];
	copy.qQTalk = [self.qQTalk copy];
	copy.sinaWb = [self.sinaWb copy];
	copy.weixinFriend = [self.weixinFriend copy];
	copy.weixinTalk = [self.weixinTalk copy];

	return copy;
}
@end
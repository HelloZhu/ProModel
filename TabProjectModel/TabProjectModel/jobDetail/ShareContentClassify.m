//
//	ShareContentClassify.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ShareContentClassify.h"

NSString *const kShareContentClassifyQqshare = @"qqshare";
NSString *const kShareContentClassifyQqtalk = @"qqtalk";
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
	if(![dictionary[kShareContentClassifyQqshare] isKindOfClass:[NSNull class]]){
		self.qqshare = dictionary[kShareContentClassifyQqshare];
	}	
	if(![dictionary[kShareContentClassifyQqtalk] isKindOfClass:[NSNull class]]){
		self.qqtalk = dictionary[kShareContentClassifyQqtalk];
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
	if(self.qqshare != nil){
		dictionary[kShareContentClassifyQqshare] = self.qqshare;
	}
	if(self.qqtalk != nil){
		dictionary[kShareContentClassifyQqtalk] = self.qqtalk;
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
	if(self.qqshare != nil){
		[aCoder encodeObject:self.qqshare forKey:kShareContentClassifyQqshare];
	}
	if(self.qqtalk != nil){
		[aCoder encodeObject:self.qqtalk forKey:kShareContentClassifyQqtalk];
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
	self.qqshare = [aDecoder decodeObjectForKey:kShareContentClassifyQqshare];
	self.qqtalk = [aDecoder decodeObjectForKey:kShareContentClassifyQqtalk];
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

	copy.qqshare = [self.qqshare copy];
	copy.qqtalk = [self.qqtalk copy];
	copy.sinaWb = [self.sinaWb copy];
	copy.weixinFriend = [self.weixinFriend copy];
	copy.weixinTalk = [self.weixinTalk copy];

	return copy;
}
@end
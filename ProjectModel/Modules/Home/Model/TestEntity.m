//
//  TestEntity.m
//  ProjectModel
//
//  Created by ap2 on 2017/12/25.
//  Copyright © 2017年 ap2. All rights reserved.
//

#import "TestEntity.h"
#import "LKDBHelper.h"

@implementation TestEntity
//重载选择 使用的LKDBHelper
+(LKDBHelper *)getUsingLKDBHelper
{
    static LKDBHelper* db;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths firstObject];
        NSString* dbpath = [documentsDirectory stringByAppendingPathComponent:@"esd.db"];
        db = [[LKDBHelper alloc]initWithDBPath:dbpath];
    });
    return db;
}

//在类 初始化的时候
+(void)initialize
{
    /**
     remove unwant property
     比如 getTableMapping 返回nil 的时候   会取全部属性  这时候 就可以 用这个方法  移除掉 不要的属性
     [self removePropertyWithColumnName:@"error"];
     **/
    
    /**
     更换列名，列如实体属性名为：age 存数据库时更改为MyAge
     [self setTableColumnName:@"MyAge" bindingPropertyName:@"age"];
     **/
}


/**
 子类重写 返回表名 默认使用类名
 @return 返回表名
 */
+(NSString *)getTableName
{
    return NSStringFromClass(self);
}


/**
 主键 子类重载并返回主键名
 @return 返回主键名，默认使用自增rowid
 */
+(NSString *)getPrimaryKey
{
    return @"rowid";
}

// 将要插入数据库
+(BOOL)dbWillInsert:(NSObject *)entity
{
    NSLog(@"will insert : %@",NSStringFromClass(self));
    return YES;
}
//已经插入数据库
+(void)dbDidInserted:(NSObject *)entity result:(BOOL)result
{
    NSLog(@"did insert : %@",NSStringFromClass(self));
}


// 重载    从数据库中  获取的值   经过自己处理 再保存
-(void)userSetValueForModel:(LKDBProperty *)property value:(id)value
{
    /**例如
     if([property.sqlColumnName isEqualToString:@"address"])
     {
     self.address = @"新的值";
     }
     **/
}

//手动or自动 绑定sql列
+(NSDictionary *)getTableMapping
{
    //返回nil表示实体属性都进行保存
    return nil;
}

@end

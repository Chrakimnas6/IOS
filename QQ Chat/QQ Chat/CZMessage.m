//
//  CZMessage.m
//  QQ Chat
//
//  Created by Hao Chen on 16/1/1.
//  Copyright (c) 2016年 Hao Chen. All rights reserved.
//

#import "CZMessage.h"

@implementation CZMessage
- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
+ (instancetype)messageWithDiC:(NSDictionary *)dic
{
    return [[self alloc] initWithDic:dic];
}

+ (NSArray *)messagesList
{
    //读取Plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"messages" ofType:@"plist"];
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    //字典转模型
    NSMutableArray *tmpArray = [NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        CZMessage *message = [CZMessage messageWithDiC:dic];
        [tmpArray addObject:message];
    }
    return tmpArray;
    
}

@end

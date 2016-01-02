//
//  CZMessage.h
//  QQ Chat
//
//  Created by Hao Chen on 16/1/1.
//  Copyright (c) 2016年 Hao Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    CZMessageTypeSelf = 0,
    CZMessageTypeOther = 1
} CZMessageType;

@interface CZMessage : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *time;

@property (nonatomic, assign) CZMessageType type;

- (instancetype)initWithDic:(NSDictionary *)dic;
+ (instancetype)messageWithDiC:(NSDictionary *)dic;

+ (NSArray *)messagesList;



@end

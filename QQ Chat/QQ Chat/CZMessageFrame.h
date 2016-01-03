//
//  CZMessageFrame.h
//  QQ Chat
//
//  Created by Hao Chen on 16/1/2.
//  Copyright (c) 2016年 Hao Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@class CZMessage;
@interface CZMessageFrame : NSObject

@property (nonatomic, assign, readonly) CGRect timeFrame;
@property (nonatomic, assign, readonly) CGRect iconFrame;
@property (nonatomic, assign, readonly) CGRect textFrame;

@property (nonatomic, assign, readonly) CGFloat rowHeight;

@property (nonatomic, strong) CZMessage *message;

@end

//
//  CZMessageCell.h
//  QQ Chat
//
//  Created by Hao Chen on 16/1/1.
//  Copyright (c) 2016年 Hao Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CZMessageFrame;
@interface CZMessageCell : UITableViewCell
@property (nonatomic, strong) CZMessageFrame* messageFrame;

+ (instancetype)messageCellWithTableView:(UITableView *)tableView;

@end

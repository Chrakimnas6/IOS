//
//  ViewController.m
//  QQ Chat
//
//  Created by Hao Chen on 16/1/1.
//  Copyright (c) 2016年 Hao Chen. All rights reserved.
//

#import "ViewController.h"
#import "CZMessage.h"
#import "CZMessageCell.h"
#import "CZMessageFrame.h"

@interface ViewController () <UITableViewDataSource>
@property (nonatomic, strong) NSArray *messageFrames;
@property (weak, nonatomic) IBOutlet UITableView *UITableView;
@end


@implementation ViewController
//懒加载
- (NSArray *)messageFrames
{
    if (_messageFrames == nil) {
        NSArray *messages = [CZMessage messagesList];
        NSMutableArray *tmpArray = [NSMutableArray array];
        for (CZMessage *msg in messages){
            CZMessageFrame *msgFrame = [[CZMessageFrame alloc] init];
            msgFrame.message = msg;
            
            [tmpArray addObject:msgFrame];
        }
        _messageFrames = tmpArray;
    }
    return _messageFrames;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 数据源的方法
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.messageFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1 创建自定义的可重用cell
    CZMessageCell *cell = [CZMessageCell messageCellWithTableView:tableView];
    //2 给子控件赋值
    cell.messageFrame = self.messageFrames[indexPath.row];
}

@end

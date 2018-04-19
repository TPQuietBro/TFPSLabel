//
//  ViewController.m
//  TFPSLabelDemo
//
//  Created by allentang on 2018/4/18.
//  Copyright © 2018年 allentang. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+FPS.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tb = [[UITableView alloc] init];
    tb.frame = self.view.bounds;
    tb.backgroundColor = [UIColor grayColor];
    tb.delegate = self;
    tb.dataSource = self;
    
    [self.view addSubview:tb];
    [self showFpsLabel];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"123"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"123"];
        UILabel *label = [[UILabel alloc] init];
        label.text = @"tetet";
        label.font = [UIFont systemFontOfSize:13];
        label.frame = CGRectMake(0, 0, 50, 20);
        label.textColor = [UIColor redColor];
        [cell.contentView addSubview:label];
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"fengjing"];
        imageView.frame = CGRectMake(50, 0, 100, 50);
        [cell.contentView addSubview:imageView];
        for (NSInteger i = 0; i < 1000; i++) {
            UIImageView *imageView = [[UIImageView alloc] init];
            imageView.image = [UIImage imageNamed:@"fengjing"];
            imageView.frame = CGRectMake(50 + 100 * i, 0, 100, 50);
            [cell.contentView addSubview:imageView];
            NSInteger sum = 100 + i;
            cell.textLabel.text = [NSString stringWithFormat:@"%zd",sum];
        }
    }
    return cell;
}


@end

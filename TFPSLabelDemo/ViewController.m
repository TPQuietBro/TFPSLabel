//
//  ViewController.m
//  TFPSLabelDemo
//
//  Created by allentang on 2018/4/18.
//  Copyright © 2018年 allentang. All rights reserved.
//

#import "ViewController.h"
#import "TFPSLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *s = [[UIScrollView alloc] init];
    s.frame = self.view.bounds;
    s.backgroundColor = [UIColor grayColor];
    s.contentSize = CGSizeMake(0, 2000);
    [self.view addSubview:s];
    
    
    TFPSLabel *label = [[TFPSLabel alloc] init];
    label.frame = CGRectMake(0, 10, 70, 25);
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    
}



@end

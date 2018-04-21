//
//  UIViewController+FPS.m
//  TFPSLabelDemo
//
//  Created by 唐鹏 on 2018/4/19.
//  Copyright © 2018年 allentang. All rights reserved.
//

#import "UIViewController+FPS.h"
#import "TFPSLabel.h"
#import <objc/message.h>

@implementation UIViewController (FPS)
- (void)hideFpsLabel{
    self.t_fpsLabel.hidden = YES;
}
- (void)showFpsLabel{
    self.t_fpsLabel = [[TFPSLabel alloc] init];
    self.t_fpsLabel.frame = CGRectMake(0, 100, 70, 25);
    self.t_fpsLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.t_fpsLabel];
}

- (void)setT_fpsLabel:(TFPSLabel *)t_fpsLabel{
    objc_setAssociatedObject(self, @selector(t_fpsLabel), t_fpsLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (TFPSLabel *)t_fpsLabel{
    return objc_getAssociatedObject(self, @selector(t_fpsLabel));
}
@end

//
//  UIViewController+FPS.h
//  TFPSLabelDemo
//
//  Created by 唐鹏 on 2018/4/19.
//  Copyright © 2018年 allentang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TFPSLabel;
@interface UIViewController (FPS)
- (void)hideFpsLabel;
- (void)showFpsLabel;
@property(strong,nonatomic) TFPSLabel *t_fpsLabel;
@end

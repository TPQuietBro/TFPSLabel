//
//  TFPSLabel.m
//  TFPSLabelDemo
//
//  Created by allentang on 2018/4/18.
//  Copyright © 2018年 allentang. All rights reserved.
//

#import "TFPSLabel.h"
@interface TFPSLabel()
@property (nonatomic,strong) CADisplayLink *link;
@property (nonatomic,assign) NSInteger count;
@property (nonatomic,assign) NSInteger lastTime;
@end
@implementation TFPSLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initSubviews];
    }
    return self;
}
- (void)deallo{
    [_link invalidate];
}
- (void)initSubviews{
    [self link];
}

- (void)trick:(CADisplayLink *)link{
    if (_lastTime == 0) {
        _lastTime = link.timestamp;
        return;
    }
    NSInteger time = link.timestamp;
    _count++;
    NSTimeInterval delta = time - _lastTime;
    if (delta < 1) return;
    _lastTime = link.timestamp;
    float fps = _count / delta;
    _count = 0;
    
    self.text = [NSString stringWithFormat:@"%.1f FPS",fps];
}

- (CADisplayLink *)link{
    if (!_link) {
        _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(trick:)];
        [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    }
    return _link;
}

@end

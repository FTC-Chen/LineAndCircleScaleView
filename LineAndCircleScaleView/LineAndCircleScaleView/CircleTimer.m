//
//  CircleTimer.m
//  LineAndCircleScaleView
//
//  Created by anyongxue on 2016/12/30.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "CircleTimer.h"

@implementation CircleTimer

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    //1.贝塞尔曲线
    UIBezierPath *bgPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width / 2,self.bounds.size.height / 2) radius:self.bounds.size.height / 2 - 9 / 2 startAngle:-M_PI_2 endAngle:1.5* M_PI clockwise:YES];
    UIColor *storkeColor = PNmidGray;
    [storkeColor setStroke];
    bgPath.lineWidth = 8;
    [bgPath stroke];

    
    //2.显示比例动画  NSTimer形式
    UIBezierPath *scalePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width / 2,self.bounds.size.height / 2) radius:self.bounds.size.height / 2 - 9 / 2 startAngle:(CGFloat)-M_PI_2 endAngle:(CGFloat)(- M_PI_2 + self.animationTime * 2*M_PI) clockwise:YES];
    UIColor *scaleColor = PNFreshGreen;
    [scaleColor setStroke];
    scalePath.lineWidth = 8;
    [scalePath stroke];

}

- (void)startAnimationTimer{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(NSTimerScaleAnimation) userInfo:nil repeats:YES];
}

//当前比例动画  NSTimer形式
- (void)NSTimerScaleAnimation{
    
    self.animationTime = self.animationTime+0.003;
    
    NSLog(@"%f",self.animationTime);
    
    if (self.animationTime <= self.currentValue/self.maxValue) {
        
        [self setNeedsDisplay];
        
    }else{
        
        [self.timer invalidate];
    }
}

- (void)dealloc{
    
    [self.timer invalidate];
}

@end

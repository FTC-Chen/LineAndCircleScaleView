//
//  CircleTimer.h
//  LineAndCircleScaleView
//
//  Created by anyongxue on 2016/12/30.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scale.h"

@interface CircleTimer : UIView

@property (nonatomic,assign)float maxValue;//最大值
@property (nonatomic,assign)float currentValue;//当前值

@property (nonatomic,strong)NSTimer *timer;

@property (nonatomic,assign)CGFloat animationTime;

- (void)startAnimationTimer;

@end

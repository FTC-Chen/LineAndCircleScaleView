//
//  CircleScaleView.h
//  ChartCollection
//
//  Created by anyongxue on 2016/12/28.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleScaleView : UIView

@property (nonatomic,assign)CGContextRef ctx;

@property (nonatomic,assign)float maxValue;//最大值
@property (nonatomic,assign)float currentValue;//当前值

@property (nonatomic,strong)NSTimer *timer;

@property (nonatomic,assign)CGFloat animationTime;

- (void)startAnimationTimer;
@end

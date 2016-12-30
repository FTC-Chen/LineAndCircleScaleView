//
//  CircleTimerViewController.m
//  LineAndCircleScaleView
//
//  Created by anyongxue on 2016/12/30.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "CircleTimerViewController.h"
#import "CircleTimer.h"

@interface CircleTimerViewController ()

@end

@implementation CircleTimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    //圆圈比例显示
    CircleTimer *circleView = [[CircleTimer alloc] initWithFrame:CGRectMake(10, 150, KScreenWidth-20, 160)];
    circleView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:circleView];
    
    circleView.maxValue=10000;
    circleView.currentValue =8000;
    
    //动画形式有2种:当前为NSTimer形式
    //1.使用CABasicAnimation
    //2.使用NSTimer,
    [circleView startAnimationTimer];
    
    //1.增加显示label
    UILabel *scaleLabel = [[UILabel alloc] initWithFrame:CGRectMake((CGRectGetWidth(circleView.frame)-120)/2, (CGRectGetHeight(circleView.frame)-24)/2, 120, 24)];
    scaleLabel.backgroundColor = [UIColor clearColor];
    scaleLabel.text = @"可用额度:8000";
    scaleLabel.textColor = TextColor;
    scaleLabel.textAlignment = NSTextAlignmentCenter;
    scaleLabel.font = [UIFont systemFontOfSize:16];
    [circleView addSubview:scaleLabel];
    
    
    //2.
    UILabel *allScaleLabel = [[UILabel alloc] initWithFrame:CGRectMake(KScreenWidth-135, CGRectGetMaxY(circleView.frame)+15, 120, 24)];
    allScaleLabel.backgroundColor = [UIColor clearColor];
    allScaleLabel.text = @"总额度:10000";
    allScaleLabel.textColor = TextColor;
    allScaleLabel.textAlignment = NSTextAlignmentRight;
    allScaleLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:allScaleLabel];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ViewController.m
//  LineAndCircleScaleView
//
//  Created by anyongxue on 2016/12/29.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "LineScaleView.h"
#import "CircleScaleView.h"

#define KScreenWidth [[UIScreen mainScreen] bounds].size.width
#define KScreenHeight [[UIScreen mainScreen] bounds].size.height

#define PNmidGray [UIColor colorWithRed:140.0 / 255.0 green:140.0 / 255.0 blue:140.0 / 255.0 alpha:1.0f];
#define PNFreshGreen    [UIColor colorWithRed:77.0 / 255.0 green:196.0 / 255.0 blue:122.0 / 255.0 alpha:1.0f]
#define TextColor [UIColor colorWithRed:100.0 / 255.0 green:100.0 / 255.0 blue:100.0 / 255.0 alpha:1.0f];
#define tableLineColor [UIColor colorWithRed:200.0 / 255.0 green:199.0 / 255.0 blue:204.0/ 255.0 alpha:1.0f];
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //显示动画
    [self displayViewAnimation];
    
}

- (void)displayViewAnimation{
    
    //条形比例显示
    LineScaleView *lineView = [[LineScaleView alloc]initWithFrame:CGRectMake(10, 150, KScreenWidth-20, 27)];
    //设置背景色
    lineView.bgView.backgroundColor = PNmidGray;
    lineView.scaleView.backgroundColor = PNFreshGreen;
    //设置显示比例
    lineView.maxValue = 100;
    lineView.currentValue = 80;
    [self.view addSubview:lineView];
    
    //1 增加显示效果label
    UILabel *currentLabel = [[UILabel alloc] initWithFrame:CGRectMake((CGRectGetWidth(lineView.frame)-120)/2, (CGRectGetHeight(lineView.frame)-24)/2, 120, 24)];
    currentLabel.backgroundColor = [UIColor clearColor];
    currentLabel.text = @"可用额度:8000";
    currentLabel.textColor = [UIColor whiteColor];
    currentLabel.textAlignment = NSTextAlignmentCenter;
    currentLabel.font = [UIFont systemFontOfSize:16];
    [lineView addSubview:currentLabel];
    
    //2
    UILabel *allLabel = [[UILabel alloc] initWithFrame:CGRectMake(KScreenWidth-135, CGRectGetMaxY(lineView.frame)+15, 120, 24)];
    allLabel.backgroundColor = [UIColor clearColor];
    allLabel.text = @"总额度:12000";
    allLabel.textColor = TextColor;
    allLabel.textAlignment = NSTextAlignmentRight;
    allLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:allLabel];
    
    //3
    UIView *tableLine = [[UIView alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(allLabel.frame)+50, KScreenWidth-20, 0.6)];
    tableLine.backgroundColor = tableLineColor;
    [self.view addSubview:tableLine];
    
    
    //圆圈比例显示
    CircleScaleView *circleView = [[CircleScaleView alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(tableLine.frame)+60, KScreenWidth-20, 160)];
    circleView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:circleView];
    
    circleView.maxValue=100;
    circleView.currentValue =80;
    
    //动画形式有2种:当前为CABasicAnimation形式
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
    allScaleLabel.text = @"总额度:12000";
    allScaleLabel.textColor = TextColor;
    allScaleLabel.textAlignment = NSTextAlignmentRight;
    allScaleLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:allScaleLabel];
    

    
}

//再次执行
- (IBAction)animationReload:(id)sender {
    
    [self displayViewAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

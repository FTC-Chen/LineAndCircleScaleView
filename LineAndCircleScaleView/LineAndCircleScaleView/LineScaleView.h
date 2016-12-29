//
//  LineScaleView.h
//  ChartCollection
//
//  Created by anyongxue on 2016/12/27.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LineScaleView : UIView

@property (nonatomic,strong)UIView *bgView;//背景
@property (nonatomic,strong)UIView *scaleView;//比例

@property (nonatomic,assign)float maxValue;//最大值
@property (nonatomic,assign)float currentValue;//当前值


@end

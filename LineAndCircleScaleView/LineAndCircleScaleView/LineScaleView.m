//
//  LineScaleView.m
//  ChartCollection
//
//  Created by anyongxue on 2016/12/27.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "LineScaleView.h"

@implementation LineScaleView

@synthesize bgView,scaleView;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        //背景
        bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        bgView.layer.borderColor = [UIColor clearColor].CGColor;
        bgView.layer.borderWidth =  0.5;
        bgView.layer.cornerRadius = self.frame.size.height/2;
        [bgView.layer setMasksToBounds:YES];
        bgView.clipsToBounds = YES;
        [self addSubview:bgView];

        //比例
        scaleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.height/2, self.frame.size.height)];
        scaleView.layer.borderColor = [UIColor clearColor].CGColor;
        scaleView.layer.borderWidth =  0.5;
        scaleView.layer.cornerRadius = self.frame.size.height/2;
        [scaleView.layer setMasksToBounds:YES];
        [self addSubview:scaleView];

        
    }
    return self;
}

- (void)currentScaleAnimation{
    
    [UIView animateWithDuration:1.8 animations:^{
        
        scaleView.frame = CGRectMake(0, 0, self.frame.size.width*(self.currentValue/self.maxValue), self.frame.size.height);
    }];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //显示比例动画
    [self currentScaleAnimation];
}

@end

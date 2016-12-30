//
//  ViewController.m
//  LineAndCircleScaleView
//
//  Created by anyongxue on 2016/12/29.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "LineScaleViewController.h"
#import "CircleScaleViewController.h"
#import "CircleTimerViewController.h"
#import "Scale.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong) UITableView *chartTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:self.chartTableView];
}

- (UITableView *)chartTableView{
    
    if (!_chartTableView) {
        
        _chartTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight) style:UITableViewStylePlain];
        
        [_chartTableView setDelegate:self];
        
        [_chartTableView setDataSource:self];
        
        [_chartTableView setTableFooterView:[UIView new]];
        
        _chartTableView.backgroundColor = KVIEWBGColor;
    }
    
    return _chartTableView;
}


#pragma mark - TabelViewDelegate && DataSoure
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"cell01";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    if (indexPath.row == 0) cell.textLabel.text = @"线形比例";
        
    if (indexPath.row == 1) cell.textLabel.text = @"圆圈比例-CABasicAnimation";
        
    if (indexPath.row == 2) cell.textLabel.text = @"圆圈比例-NSTimer";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        //线形比例
        LineScaleViewController *lineview = [[LineScaleViewController alloc] init];
        
        [self.navigationController pushViewController:lineview animated:YES];
        
    }else if (indexPath.row==1){
        //圆圈比例-CABasicAnimation
        CircleScaleViewController *circleView = [[CircleScaleViewController alloc] init];
        
        [self.navigationController pushViewController:circleView animated:YES];
        
    }else if (indexPath.row==2){
        //圆圈比例-NSTimer
        CircleTimerViewController *cirTimer = [[CircleTimerViewController alloc] init];
        
        [self.navigationController pushViewController:cirTimer animated:YES];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ViewController.m
//  GYSliderBar
//
//  Created by qiugaoying on 2019/4/19.
//  Copyright © 2019年 qiugaoying. All rights reserved.
//

#import "ViewController.h"
#import "GYSlideBar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

  
    
    GYSlideBar *gySliderBar = [[GYSlideBar alloc]initWithFrame:CGRectMake(30, 0, self.view.frame.size.width-60, 30)];
    gySliderBar.minimumValue = 100;
    gySliderBar.maximumValue = 1000;
    gySliderBar.currenValueMax = 700;
    gySliderBar.currenValueMin = 200;
    gySliderBar.stageValue = 50;
    gySliderBar.center = self.view.center;
    gySliderBar.bStageFlag = YES; //开启阶梯进度值；
    gySliderBar.trackColor = [UIColor lightGrayColor];
    gySliderBar.progressColor = [UIColor orangeColor];
    [gySliderBar resetSlideBtnPosition];
    gySliderBar.valueChangeListener = ^(NSInteger chooseMinValue, NSInteger chooseMaxValue) {
        NSLog(@"当前选择的范围:%ld~%ld",chooseMinValue,chooseMaxValue);
    };
    [self.view addSubview:gySliderBar];
    
    
    
    UILabel *descLabel = [[UILabel alloc]init];
    descLabel.textColor = [UIColor blackColor];
    descLabel.font = [UIFont systemFontOfSize:14];
    descLabel.text = @"GYSlideBar 支持阶梯值滑动，选择范围值";
    [self.view addSubview:descLabel];
    descLabel.frame = CGRectMake(30, CGRectGetMinY(gySliderBar.frame) - 100, self.view.frame.size.width, 30);
    
}


@end

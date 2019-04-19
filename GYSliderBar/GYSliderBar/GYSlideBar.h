//
//  GYSlideBar.h
//  GYSliderBar
//
//  Created by qiugaoying on 2019/4/19.
//  Copyright © 2019年 qiugaoying. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SlideBarValueChangeListener)(NSInteger chooseMinValue, NSInteger chooseMaxValue);

@interface GYSlideBar : UIView

@property(nonatomic) float currenValueMin; //当前最大值
@property(nonatomic) float currenValueMax; //当前最小
@property(nonatomic) float minimumValue; //最小值
@property(nonatomic) float maximumValue; //最大值

@property (nonatomic, strong) UIColor *progressColor; //已选范围区域 的颜色
@property (nonatomic, strong) UIColor *trackColor; //未选范围区域 的颜色

@property (nonatomic, assign) BOOL bStageFlag; //是否阶梯滑动
@property(nonatomic, assign) NSInteger stageValue; //阶梯值
@property (nonatomic, copy) SlideBarValueChangeListener valueChangeListener; //值改变的监听block
//重置初始化值
-(void)resetSlideBtnPosition;
@end

NS_ASSUME_NONNULL_END

//
//  ViewController.m
//  0731-XZMStatusBarHUD
//
//  Created by 谢忠敏 on 15/7/31.
//  Copyright (c) 2015年 谢忠敏. All rights reserved.
//

#import "XZMStatusBarHUDDemo.h"
#import "XZMStatusBarHUD.h"
@interface XZMStatusBarHUDDemo ()

@end

@implementation XZMStatusBarHUDDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/**
 *  加载成功 设置提醒框的背景颜色
 */
- (IBAction)loadSuccess {
    
    [[XZMStatusBarHUD sharedXZMStatusBarHUD] showSuccess:@"加载成功" position:0 animaDelay:0 configuration:^() {
        
        /** 设置透明度 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusAlpha = 0.7;
        
        /** 设置提醒框的背景颜色 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusColor = [UIColor blueColor];
       
    }];
    
}


/**
 *  加载错误 设置文字富文本属性
 */
- (IBAction)loadError {
    
    
    [[XZMStatusBarHUD sharedXZMStatusBarHUD] showError:@"加载错误" position:0 animaDelay:0 configuration:^() {
        
        /** 设置透明度 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusAlpha = 1.0;
        
        /** 设置提醒框高度 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusH = 40;
        
        /** 设置文字富文本属性 */
        NSMutableDictionary *dict = @{}.mutableCopy;
        dict[NSFontAttributeName] = [UIFont systemFontOfSize:16];
        dict[NSForegroundColorAttributeName] = [UIColor redColor];
        [XZMStatusBarHUD sharedXZMStatusBarHUD].attributedText = dict;
    }];
}

/**
 *  正在加载中 设置提醒框的背景颜色
 */
- (IBAction)loading {
    
    [[XZMStatusBarHUD sharedXZMStatusBarHUD] showLoading:@"正在加载中..." position:0 animaDelay:0 configuration:^() {
        
        /** 设置提醒框的背景颜色 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusColor = [UIColor redColor];
    }];
}

/**
 *  普通文字加载 设置提醒框的背景图
 */
- (IBAction)normal {
    
    [[XZMStatusBarHUD sharedXZMStatusBarHUD] showNormal:@"普通文字加载" position:0 animaDelay:0 configuration:^() {
        
        /** 设置提醒框高度 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusH = 48;
        
        /** 设置文字富文本属性 */
        NSMutableDictionary *dict = @{}.mutableCopy;
        dict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
        dict[NSForegroundColorAttributeName] = [UIColor brownColor];
        [XZMStatusBarHUD sharedXZMStatusBarHUD].attributedText = dict;
        
        /** 设置提醒框的背景图片 */
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"friendsTrend_login"]];
        
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusbackgroundView = imageView;
    }];
}

- (IBAction)hidden {
    
    [[XZMStatusBarHUD sharedXZMStatusBarHUD] hidden];
}

@end

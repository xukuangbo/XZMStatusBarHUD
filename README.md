# XZMStatusBarHUD
![(logo)](http://images.cnitblog.com/blog2015/497279/201505/051004492043385.png)
非常方便易用的状态栏指示器(比如微博项目的微博数提醒框仅需几行代码)

* 比如微博项目的微博数提醒框仅需几行代码

##微博项目的微博数提醒框
![(logo)](http://7xkt3g.com1.z0.glb.clouddn.com/weibo.gif)
```objc
/** 提醒最新微博数量 */
- (void)showNewStatusCount:(NSInteger)count
{
    if (count) {
      [[XZMStatusBarHUD sharedXZMStatusBarHUD] showNormal:[NSString stringWithFormat:@"有%ld条新的微博" ,count] position:64 animaDelay:0 configuration:^{
          
          /** 设置需要添加到哪个View上 */
          [XZMStatusBarHUD sharedXZMStatusBarHUD].formView = self.view;
      }];
    } else {
        
        [[XZMStatusBarHUD sharedXZMStatusBarHUD] showNormal:@"没有新的微博数据" position:64 animaDelay:0 configuration:^{
            
           /** 设置需要添加到哪个View上 */
           [XZMStatusBarHUD sharedXZMStatusBarHUD].formView = self.view;
        }];
    }
}

```


##加载成功 设置提醒框的背景颜色
![(logo)](http://7xkt3g.com1.z0.glb.clouddn.com/jiazaichenggong.gif)
```objc

[[XZMStatusBarHUD sharedXZMStatusBarHUD] showSuccess:@"加载成功" position:0 animaDelay:0 configuration:^() {
        
        /** 设置透明度 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusAlpha = 0.7;
        
        /** 设置提醒框的背景颜色 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusColor = [UIColor blueColor];
       
    }];
   
position:可设置状态栏的提醒款的位置 默认值为0

animaDelay:可以设置动画的持续时间, 0代表默认值:1.0   
    
```    

##加载错误 并设置文字富文本属性
![(logo)](http://7xkt3g.com1.z0.glb.clouddn.com/jiazaishibai.gif)
```objc
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
  
position:可设置状态栏的提醒款的位置 默认值为0

animaDelay:可以设置动画的持续时间, 0代表默认值:1.0    
    
 ``` 
 
##正在加载中 并设置提醒框的背景颜色
![(logo)](http://7xkt3g.com1.z0.glb.clouddn.com/jiazaizhong.gif)
```objc
 [[XZMStatusBarHUD sharedXZMStatusBarHUD] showLoading:@"正在加载中..." position:0 animaDelay:0 configuration:^() {
        
        /** 设置提醒框的背景颜色 */
        [XZMStatusBarHUD sharedXZMStatusBarHUD].statusColor = [UIColor redColor];
    }];

position:可设置状态栏的提醒款的位置 默认值为0

animaDelay:可以设置动画的持续时间, 0代表默认值:1.0     
    
```    
##隐藏提醒框
![(logo)](http://7xkt3g.com1.z0.glb.clouddn.com/yichang.gif)

```objc
 [[XZMStatusBarHUD sharedXZMStatusBarHUD] hidden];
```


##普通文字加载 并设置提醒框的背景图
![(logo)](http://7xkt3g.com1.z0.glb.clouddn.com/putong.gif)
```objc
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

position:可设置状态栏的提醒款的位置 默认值为0

animaDelay:可以设置动画的持续时间, 0代表默认值:1.0     
    
```
//
//  DZFBBCustomNC.m
//  DZFBBCustomNC
//
//  Created by 陈东芝 on 17/4/16.
//  Copyright © 2017年 陈东芝. All rights reserved.
//

#import "DZFBBCustomNC.h"

@interface DZFBBCustomNC ()

@end

@implementation DZFBBCustomNC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize {
    //设置导航栏主题
    [self setupNavigationBarTheme];
}

+ (UIImage *)image {
    CGSize imageSize = CGSizeMake(1, 0.3);
    UIGraphicsBeginImageContextWithOptions(imageSize, 0, [UIScreen mainScreen].scale);
    [[UIColor colorWithRed:129.0/255 green:129.0/255 blue:129.0/255 alpha:0.36] set];
    UIRectFill(CGRectMake(0, 0, imageSize.width, imageSize.height));
    UIImage *pressedColorImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return pressedColorImg;
}


#pragma mark - 设置导航栏主题
+ (void)setupNavigationBarTheme {
    
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    //設置狀態欄字體顏色為：白色。
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    UIColor * color = [UIColor blackColor];
    NSDictionary * dict=[NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    [navigationBar setTitleTextAttributes:dict];
    
    ///修改bar下的分割线样式
    UIImage *image=  [self image];
    [navigationBar setShadowImage:image];
    [navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];

}


#pragma  mark - 拦截所有push方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        // 如果navigationController的字控制器个数大于两个就隐藏，底部工具栏
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.hidesBackButton = YES;
        UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 7, 30, 30)];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        button.backgroundColor = [UIColor redColor];
        [button setImage:[[UIImage imageNamed:@"back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [contentView addSubview:button];

        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:contentView];
        viewController.navigationItem.leftBarButtonItem = item;
    }
    [super pushViewController:viewController animated:animated];
}

#pragma mark - 返回
/**
 *  点击返回按钮时调用
 *  返回上一个界面
 */
-(void)back {
    [super popViewControllerAnimated:YES];
}

#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

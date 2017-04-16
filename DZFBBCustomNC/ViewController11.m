//
//  ViewController11.m
//  DZFBBCustomNC
//
//  Created by 陈东芝 on 17/4/16.
//  Copyright © 2017年 陈东芝. All rights reserved.
//

#import "ViewController11.h"

@interface ViewController11 ()

@end

@implementation ViewController11

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    UIViewController *viewc = [[UIViewController alloc] init];
    viewc.view.backgroundColor = [UIColor whiteColor];
    viewc.title = @"首页";

    [self.navigationController pushViewController:viewc animated:YES];
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

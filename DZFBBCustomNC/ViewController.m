//
//  ViewController.m
//  DZFBBCustomNC
//
//  Created by 陈东芝 on 17/4/16.
//  Copyright © 2017年 陈东芝. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    ViewController11 *viewc = [[ViewController11 alloc] init];
    viewc.view.backgroundColor = [UIColor whiteColor];
    viewc.title = @"首页";
    
    DZFBBCustomNC *nc = [[DZFBBCustomNC alloc] initWithRootViewController:viewc];
    [self presentViewController:nc animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

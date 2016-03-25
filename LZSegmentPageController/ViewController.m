//
//  ViewController.m
//  LZSegmentPageController
//
//  Created by nacker on 16/3/25.
//  Copyright © 2016年 帶頭二哥 QQ:648959. All rights reserved.
//

#import "ViewController.h"
#import "LZPageViewController.h"
#import "PageCell1Controller.h"
#import "PageCell2Controller.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"点我点我" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    LZPageViewController *pageVc = [[LZPageViewController alloc] initWithTitles:@[@"交易成功",@"待发货",@"配送中",@"待结算",] controllersClass:@[[PageCell1Controller class],[PageCell1Controller class],[PageCell2Controller class],[PageCell2Controller class]]];
    [self.navigationController pushViewController:pageVc animated:YES];
}
@end

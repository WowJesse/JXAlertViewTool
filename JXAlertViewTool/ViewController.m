//
//  ViewController.m
//  JXAlertViewTool
//
//  Created by 张明辉 on 16/3/16.
//  Copyright © 2016年 jesse. All rights reserved.
//

#import "ViewController.h"
#import "JXAlertViewTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)clickBtn:(id)sender {
    [JXAlertViewTool showAlertView:self title:@"your are so .." message:@"handsome" cancelButtonTitle:@"cancle" otherButtonTitle:@"confirm" confirm:^{
        NSLog(@"confirm");
    } cancle:^{
        NSLog(@"cancle");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

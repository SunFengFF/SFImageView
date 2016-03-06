//
//  ViewController.m
//  SFImageView
//
//  Created by sunfeng on 16/3/1.
//  Copyright © 2016年 Bever. All rights reserved.
//

#import "ViewController.h"
#import "WBImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WBImageView *imageView = [[WBImageView alloc] initWithFrame:CGRectMake(0, 100, 200, 200)];
    imageView.dataList = @[@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1"];
    
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

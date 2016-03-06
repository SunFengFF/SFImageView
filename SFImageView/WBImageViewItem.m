//
//  WBImageViewItem.m
//  Weibo
//
//  Created by 孙 峰 on 15/10/26.
//  Copyright © 2015年 Bever. All rights reserved.
//

#import "WBImageViewItem.h"
#import "WBImageViewController.h"
#import "UIView+UIViewController.h"
@implementation WBImageViewItem

-(id)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        //布局方式
        self.contentMode = UIViewContentModeScaleAspectFit;
        //打开响应
        self.userInteractionEnabled = YES;
        //添加tap手势
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAct)];
        [self addGestureRecognizer:tap];
        
        //创建时 保存frame
        _originFrame = frame;
        
    }
    return self;
}

//点击事件需要传递到cell中
-(void)sendTouchEventToCell{
    NSSet *touch = nil;
    UIEvent *event = nil;
    
    UIResponder *next = self.nextResponder;
    
    while (![next isKindOfClass:[UITableViewCell class]]) {
        
        next = next.nextResponder;
        
        //避免死循环 添加终止条件
        if ([next isKindOfClass:[UIViewController class]]) {
            return;
        }
        
    }
    
    [next touchesBegan:touch withEvent:event];

}

//tap 触发的方法
-(void)tapAct{
    
    [self sendTouchEventToCell];
    
    WBImageViewController *controller = [[WBImageViewController alloc] init];

    controller.dataList = self.dataList;
    
    controller.currentIndex = self.index;
    controller.currentItem = self;

    [self.viewController presentViewController:controller animated:NO completion:nil];
    
}

//计算出item相对于window的frame
-(CGRect)getNewFrameAtWindow:(CGRect)originFrame{
    //
    
    
    //1.原有坐标系  2.原有坐标  3.新坐标系
    return [self.superview convertRect:self.frame toView:self.window];    
}

@end

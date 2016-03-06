//
//  WBImageViewItem.h
//  Weibo
//
//  Created by 孙 峰 on 15/10/26.
//  Copyright © 2015年 Bever. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WBImageView.h"
@interface WBImageViewItem : UIImageView

@property (nonatomic,copy) NSArray *dataList;

@property (assign) NSInteger index;

//在WBImageView上的原有的Frame
@property (assign) CGRect originFrame;
//保存原有的superview （WBImageView）
@property (nonatomic,weak) WBImageView *originSuperView;

-(CGRect)getNewFrameAtWindow:(CGRect)originFrame;


@end

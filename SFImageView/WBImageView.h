//
//  WBImageView.h
//  Weibo
//
//  Created by 孙 峰 on 15/10/26.
//  Copyright © 2015年 Bever. All rights reserved.
//


#import <UIKit/UIKit.h>

@class WBImageViewItem;
@interface WBImageView : UIView

//数据
@property (nonatomic,copy) NSArray *dataList;

//根据index索引值 获取对应的item
-(WBImageViewItem*)itemAtIndex:(NSInteger)index;

+(CGFloat) heightForCount:(int)count;

@end

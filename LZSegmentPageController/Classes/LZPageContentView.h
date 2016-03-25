//
//  LZPageContentView.h
//  HXClient
//
//  Created by nacker on 16/3/23.
//  Copyright © 2016年 帶頭二哥 QQ:648959. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LZPageContentView;

@protocol LZPageContentViewDelegate <NSObject>

@optional

- (void)pageContentView:(LZPageContentView *)pageContentView didClickBtnIndex:(NSInteger)index;

@end

@interface LZPageContentView : UIView

- (instancetype)initWithFrame:(CGRect)frame itemsArray:(NSArray *)itemsArray;

@property (nonatomic, weak) id<LZPageContentViewDelegate> delegate;


@property (nonatomic, assign) int index;

@end

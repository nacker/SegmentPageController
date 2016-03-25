//
//  LZPageMainCell.m
//  HXClient
//
//  Created by nacker on 16/3/23.
//  Copyright © 2016年 帶頭二哥 QQ:648959. All rights reserved.
//

#import "LZPageMainCell.h"

@implementation LZPageMainCell

- (void)setIndexController:(UIViewController *)indexController{

    [_indexController.view removeFromSuperview];
    _indexController = indexController;
    [self.contentView addSubview:_indexController.view];
    [self layoutSubviews];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _indexController.view.frame = self.bounds;
}

@end

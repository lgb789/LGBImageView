//
//  UIImageView+lgb_imageView.h
//  UIImageViewCategory
//
//  Created by lgb789 on 16/5/12.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (lgb_imageView)

-(void)lgb_setCircleImage:(UIImage *)image;

-(void)lgb_setImage:(UIImage *)image
       cornerRadius:(CGFloat)radius;

@end

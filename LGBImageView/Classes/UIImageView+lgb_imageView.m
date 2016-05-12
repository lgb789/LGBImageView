//
//  UIImageView+lgb_imageView.m
//  UIImageViewCategory
//
//  Created by lgb789 on 16/5/12.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "UIImageView+lgb_imageView.h"

@implementation UIImageView (lgb_imageView)

-(void)lgb_setCircleImage:(UIImage *)image
{
    CGFloat radius = MIN(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    [self lgb_setImage:image cornerRadius:radius];
}

-(void)lgb_setImage:(UIImage *)image
       cornerRadius:(CGFloat)radius
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius] addClip];
    [image drawInRect:self.bounds];
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

@end

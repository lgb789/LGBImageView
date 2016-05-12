//
//  LGBViewController.m
//  LGBImageView
//
//  Created by lgb789 on 05/12/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "UIImageView+lgb_imageView.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [imageView lgb_setImage:[UIImage imageNamed:@"xiaoxi.jpg"] cornerRadius:30];
    [self.view addSubview:imageView];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(imageView.frame) + 10, 100, 100)];
    [imageView1 lgb_setCircleImage:[UIImage imageNamed:@"xiaoxi.jpg"]];
    [self.view addSubview:imageView1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

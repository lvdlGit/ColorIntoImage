//
//  ViewController.m
//  ColorIntoImage
//
//  Created by lvdl on 16/9/22.
//  Copyright © 2016年 www.palcw.com. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ColorIntoImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imgView = [[UIImageView alloc] init];
    [self.view addSubview:imgView];
    imgView.frame = CGRectMake(30, 50, 100, 100);
    
    UIImage *image = [UIImage imageWithColor:[UIColor redColor] size:CGSizeMake(200, 200)];
    imgView.image = image;
    
    
    UIImageView *imgView2 = [[UIImageView alloc] init];
    [self.view addSubview:imgView2];
    imgView2.frame = CGRectMake(30, 180, 100, 100);
    
    UIImage *image2 = [UIImage imageWithColor:[UIColor blueColor] cornerRadius:50];
    imgView2.image = image2;
    
    
    UIImageView *imgView3 = [[UIImageView alloc] init];
    [self.view addSubview:imgView3];
    imgView3.frame = CGRectMake(30, 300, 200, 50);
    
    UIImage *image3 = [UIImage imageWithUIView:[self myLabel:imgView3.frame]];
    imgView3.image = image3;
}

- (UILabel *)myLabel:(CGRect)frame
{
    UILabel *label = [[UILabel alloc] init];
    label.frame = frame;
    label.backgroundColor = [UIColor cyanColor];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor blackColor];
    label.numberOfLines = 0;
    label.text = @"这只是个图片, 由lable转化而成的图片";
    
    return label;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

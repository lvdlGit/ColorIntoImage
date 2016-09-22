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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

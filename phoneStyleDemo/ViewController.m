//
//  ViewController.m
//  phoneStyleDemo
//
//  Created by hhg on 2018/12/21.
//  Copyright © 2018年 hhg. All rights reserved.
//

#import "ViewController.h"

#import "PhoneStyleTF.h"

@interface ViewController ()

@property (nonatomic , strong ) PhoneStyleTF * phoneField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /// 手机号Textfield - test 
    _phoneField = [[PhoneStyleTF alloc]initWithFrame:CGRectMake(30,  300 , 260, 40)];
    [self.view addSubview:_phoneField];
}

@end

//
//  PhoneStyleTF.m
//  phoneStyleDemo
//
//  Created by hhg on 2018/12/21.
//  Copyright © 2018年 hhg. All rights reserved.
//

#import "PhoneStyleTF.h"
#import "HGPhoneStyleTextField.h"
@interface PhoneStyleTF()<HGPhoneStyleDelegate,UITextFieldDelegate>

@property (nonatomic , assign ) BOOL isDeleteTF;

@property (nonatomic , strong ) HGPhoneStyleTextField * phoneField;

@end

@implementation PhoneStyleTF

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //手机号
        _phoneField = [[HGPhoneStyleTextField alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self addSubview:_phoneField];
        _phoneField.hgDelegate = self;
        _phoneField.backgroundColor = [UIColor grayColor];
        _phoneField.delegate = self;
        _isDeleteTF = false;
    }
    return self;
}

#pragma mark - 手机号码分割成 3 4 4 模式
-(void)HGPhoneStyleDeleteBackward:(HGPhoneStyleTextField *)textField {

    _isDeleteTF = true;
    NSString *stringWithoutQuotation = [textField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *str = textField.text;
    if (stringWithoutQuotation.length == 3 || stringWithoutQuotation.length == 7) {
        NSString *cccc = [str substringToIndex:[str length] - 1];
        _isDeleteTF = false;
        textField.text = cccc;
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *stringWithoutQuotation = [textField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if (stringWithoutQuotation.length == 3  &&  _isDeleteTF == false ) {
        NSMutableString* str1=[[NSMutableString alloc]initWithString:textField.text];
        [str1 insertString:@" "atIndex:3];
        textField.text = str1;
    } else if (stringWithoutQuotation.length == 3+4  &&  _isDeleteTF == false){
        NSMutableString* str1=[[NSMutableString alloc]initWithString:textField.text];
        [str1 insertString:@" "atIndex:3+1+4 ];
        textField.text = str1;
    } else if (stringWithoutQuotation.length != 2) {
        _isDeleteTF = false;
    }
    return true;
}
@end

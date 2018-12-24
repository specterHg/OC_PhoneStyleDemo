//
//  HGPhoneStyleTextField.m
//  phoneStyleDemo
//
//  Created by hhg on 2018/12/21.
//  Copyright © 2018年 hhg. All rights reserved.
//

#import "HGPhoneStyleTextField.h"

@implementation HGPhoneStyleTextField


- (void)deleteBackward {
    [super deleteBackward];
    if ([self.hgDelegate respondsToSelector:@selector(HGPhoneStyleDeleteBackward:)]) {
        [self.hgDelegate HGPhoneStyleDeleteBackward:self];
    }
}

@end

//
//  HGPhoneStyleTextField.h
//  phoneStyleDemo
//
//  Created by hhg on 2018/12/21.
//  Copyright © 2018年 hhg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class HGPhoneStyleTextField;

@protocol HGPhoneStyleDelegate <NSObject>

- (void)HGPhoneStyleDeleteBackward:(HGPhoneStyleTextField *)textField;

@end

@interface HGPhoneStyleTextField : UITextField

@property (nonatomic, assign) id <HGPhoneStyleDelegate> hgDelegate;

@end

NS_ASSUME_NONNULL_END

//
//  iOSTextFieldHandler.h
//  iOSTextFieldHandler
//
//  Created by Scott on 27/03/2014.
//  Copyright (c) 2014 scottdidit. All rights reserved.
//
//  https://github.com/sdernley/iOSTextFieldHandler

#import <UIKit/UIKit.h>

@interface iOSTextFieldHandler : NSObject


+(void)TextPaddingSingle:(UITextField *)textField;
+(void)TextPaddingMultiple:(NSArray *)textArray;
+(void)TextboxKeyboardMover:(UIScrollView *)containingScrollView tf:(UITextField *)textField btn:(UIButton *)button;
@end

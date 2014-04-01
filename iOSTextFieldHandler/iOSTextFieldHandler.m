//
//  iOSTextFieldHandler.m
//  iOSTextFieldHandler
//
//  Created by Scott on 27/03/2014.
//  Copyright (c) 2014 scottdidit. All rights reserved.
//
//  https://github.com/sdernley/iOSTextFieldHandler

#import "iOSTextFieldHandler.h"

@interface iOSTextFieldHandler ()

@end

@implementation iOSTextFieldHandler


+(void)TextPaddingSingle:(UITextField *)textField
{
   //IF YOU JUST WANT TO ADD PADDING TO AN INDIVIDUAL UITEXTFIELD - ADDS 10 PADDING
       
        UIView *spacerView = [[UIView alloc] initWithFrame:CGRectMake(10, 0, 10, 10)];
        [textField setLeftViewMode:UITextFieldViewModeAlways];
        [textField setLeftView:spacerView];
}


+(void)TextPaddingMultiple:(NSArray *)textArray
{
    //ADD PADDING TO MULTIPLE UITEXTFIELDS - ADDS 10 PADDING
    int intCount = textArray.count;
    for (int i = 0; i < intCount; i++)
    {
        UITextField *textField = [textArray objectAtIndex: i];
        UIView *spacerView = [[UIView alloc] initWithFrame:CGRectMake(10, 0, 10, 10)];
        [textField setLeftViewMode:UITextFieldViewModeAlways];
        [textField setLeftView:spacerView];
    }
    
}

+(void)TextboxKeyboardMover:(UIScrollView *)containingScrollView tf:(UITextField *)textField btn:(UIButton *)button
{
    //POSITION THE SCROLLVIEW TO THE TOP OF THE PAGE FOR BEST RESULTS
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat screenHeight = screenSize.height;
    
    int objectStartPosition = containingScrollView.frame.origin.y + textField.frame.origin.y;
    int objectEndPosition = objectStartPosition + textField.frame.size.height;
    
    int lastAllowedPoint = screenHeight - (216 + 20); // ADDED 20 TO GIVE SOME SPACE ABOVE KEYBOARD BEFORE OBJECT
    int moveObjectBy = objectEndPosition - lastAllowedPoint;
    
    int buttonAllowance = button.frame.size.height + 10; //ADDED 10 TO ALLOW PADDING ABOVE BUTTON
    if(objectEndPosition < lastAllowedPoint) // 10 PADDING SO IT DOESN'T TOUCH BOTTOM
    {
        //PUT TO ORIGINAL POSITION (WILL MOVE IT BACK IF IT USED TO BE BELOW)
        [containingScrollView setContentOffset:CGPointMake(0, 0) animated:TRUE];
    }
    else
    {
        //MOVE IT SO IT ISN'T BELOW KEYBOARD
        [containingScrollView setContentOffset:CGPointMake(0, moveObjectBy + buttonAllowance) animated:TRUE];
    }
}

@end

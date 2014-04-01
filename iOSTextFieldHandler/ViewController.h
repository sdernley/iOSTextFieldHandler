//
//  ViewController.h
//  KeyboardScroll
//
//  Created by Scott on 27/03/2014.
//  Copyright (c) 2014 scottdidit. All rights reserved.
//

#import <UIKit/UIKit.h>

//SET YOUR CONTROLLER TO BE A UITextFieldDelegate & UIScrollViewDelegate
@interface ViewController : UIViewController <UITextFieldDelegate, UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UIScrollView *containingScrollView;
@property (weak, nonatomic) IBOutlet UIButton *btnSubmit;



@end

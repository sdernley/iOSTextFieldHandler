//
//  ViewController.m
//  KeyboardScroll
//
//  https://github.com/sdernley/iOSTextFieldHandler

#import "ViewController.h"
#import "iOSTextFieldHandler.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize txtUsername, txtFirstName, txtLastName, txtEmail, txtPassword, containingScrollView, btnSubmit;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //TEXTBOX PADDING
    ////////////////////////////////////////////////////////////////////////
    
    //YOU CAN PASS IN THE TEXT BOXES SINGULARLY THIS WAY IF YOU WANT:
    //[iOSTextFieldHandler TextPadding: txtFirstName];
    
    //OR WITH AN ARRAY IF YOU WANT (MY PREFERED WAY), LIKE THIS:
    NSArray *textArray = [NSArray arrayWithObjects: txtUsername, txtFirstName, txtLastName, txtEmail, txtPassword, nil];
    [iOSTextFieldHandler TextPaddingMultiple: textArray];
    ////////////////////////////////////////////////////////////////////////
    
    //YOU'LL NEED TO SET ALL THE UITEXTFIELDS TO HAVE A DELEGATE OF SELF IF YOU WANT THE KEYBOARD SCROLL
    txtUsername.delegate = self;
    txtFirstName.delegate = self;
    txtLastName.delegate = self;
    txtPassword.delegate = self;
    txtEmail.delegate = self;
    
    
    //YOU DON'T NEED TO DO THIS, I JUST WANTED WHITE BORDERED UITEXTFIELDS FOR THE EXAMPLE
    [self setBorders];
    
}

//KEYBOARD MOVEMENT
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [iOSTextFieldHandler TextboxKeyboardMover:containingScrollView tf:textField btn:btnSubmit];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

//YOU DON'T NEED TO DO THIS EITHER, I JUST WANTED A WHITE STATUS BAR FOR THE EXAMPLE
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

//THIS IS JUST THE BORDER STUFF, YOU DON'T NEED TO DO THIS
-(void)setBorders
{
    txtUsername.layer.borderWidth = 1.0f;
    txtUsername.layer.borderColor = [[UIColor whiteColor] CGColor];
    txtFirstName.layer.borderWidth = 1.0f;
    txtFirstName.layer.borderColor = [[UIColor whiteColor] CGColor];
    txtLastName.layer.borderWidth = 1.0f;
    txtLastName.layer.borderColor = [[UIColor whiteColor] CGColor];
    txtPassword.layer.borderWidth = 1.0f;
    txtPassword.layer.borderColor = [[UIColor whiteColor] CGColor];
    txtEmail.layer.borderWidth = 1.0f;
    txtEmail.layer.borderColor = [[UIColor whiteColor] CGColor];
}


@end

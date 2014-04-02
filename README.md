iOSTextFieldHandler
===================

Handle `UITextField` in iOS. Unhide TextFields and submit buttons from behind keyboard when using a `ScrollView`. Add inner padding to `TextField` elements. Generally, just make your forms more usuable.

Copy `iOSTextFieldHandler.h` &amp; `iOSTextFieldHandler.m` into your project to use.

Example project with files in is included to show usage examples but some quick examples are below.

##Keyboard positioning before
![Before](http://scottdidit.co.uk/before.jpg)
Keyboard covers `TextField`s and submit button stopping the user from submitting the form.

##Keyboard positioning after
![After](http://scottdidit.co.uk/after.jpg)
Anything that falls below the keyboard is moved up so the user can see it.

##Example Usage
Add padding to your TextFields by adding your TextFields to an array and passing the array through the handler. You can do this on `viewDidLoad`
```objective-c
NSArray *textArray = [NSArray arrayWithObjects: txtUsername, txtFirstName, txtLastName, txtEmail, txtPassword, nil];
    
[iOSTextFieldHandler TextPaddingMultiple: textArray];
```
Want to stop TextFields and buttons being hidden behind the keyboard? Easy, just add this in your ViewController with the name of your scrollView and your submit button. You can see how to do this in the example code.

```objective-c
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [iOSTextFieldHandler TextboxKeyboardMover:containingScrollView tf:textField btn:btnSubmit];
}
```
Make sure all of your TextFields have delegate set to self.

##More coming soon
I'm going to add some new features in soon so keep checking back.

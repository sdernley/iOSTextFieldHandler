iOSTextFieldHandler
===================

Handle `UITextField` in iOS. Unhide TextFields and submit buttons from behind keyboard when using a `ScrollView`. Add inner padding to `TextField` elements. Generally, just make your forms more usuable.

Copy `iOSTextFieldHandler.h` &amp; `iOSTextFieldHandler.m` into your project to use.

Example project with files in is included to show usage examples but some quick examples are below.

##Keyboard positioning before
![Before](http://github.scottdidit.co.uk/before.jpg)
Keyboard covers `TextField`s and submit button stopping the user from submitting the form.

##Keyboard positioning after
![After](http://github.scottdidit.co.uk/after.jpg)
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

To close / resign the keyboard when the `ScrollView` is tapped, you just need to add this to your `viewDidLoad`:

```objective-c
[iOSTextFieldHandler KeyboardResigner: containingScrollView];
```
Make sure all of your TextFields have delegate set to self.

##Thanks
Thanks for getting this far. You don't have to, but if you use iOSTextFieldHandler I'd love hear about it. You can tweet me at http://twitter.com/sdernley.

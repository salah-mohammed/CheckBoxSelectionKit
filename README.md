# Result

![alt text](https://github.com/salah-mohammed/CheckBoxSelectionKit/blob/master/CheckBoxSelectionKitExample/ScreenShot.png)

# CheckBoxSelectionKit

Navigation Kit used for make threat with screen that have differents navigation bar style, make change style of bar easy.
# Advantages
* CheckButton for checkbox.
* RadioButton Used for radio button.
* RadioView Used for radio view for custom view.
* StatusButton used for chanage status of button.


# Requirements
* IOS 13+ 
* Swift 5+

# How used (configuration): 

# Pod install
```ruby
pod 'CheckBoxSelectionKit',:git => "https://github.com/salah-mohammed/CheckBoxSelectionKit.git"
 
```
- First: CheckButton

```swift

 override func viewDidLoad() {
       super.viewDidLoad()
       

}

```
- Second:RadioButton

```swift

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // radio button setup
        let radioButtonHandler = { (radioButton:RadioButton, isSelected:Bool) in
            if isSelected == true {
                radioButton.backgroundColor=UIColor.red;
            }else{
                radioButton.backgroundColor=UIColor.blue;
            }
        }
        self.radioButton0.setChangeOnCompletionHandler(changeOnCompletionHandler: radioButtonHandler);
        self.radioButton1.setChangeOnCompletionHandler(changeOnCompletionHandler: radioButtonHandler);
        self.radioButton2.setChangeOnCompletionHandler(changeOnCompletionHandler: radioButtonHandler);
        self.radioButton3.setChangeOnCompletionHandler(changeOnCompletionHandler: radioButtonHandler);
        self.radioButton0.isSelected=true;
        }

 ```
- Thired:RadioView

```swift

 override func viewDidLoad() {
       super.viewDidLoad()
       
           let radioViewHandler = { (radioView:RadioView, isSelected:Bool) in
            if isSelected == true {
                radioView.backgroundColor=UIColor.red;
            }else{
                radioView.backgroundColor=UIColor.blue;
            }
        }
        self.radioView0.setChangeOnCompletionHandler(changeOnCompletionHandler: radioViewHandler);
        self.radioView1.setChangeOnCompletionHandler(changeOnCompletionHandler: radioViewHandler);
        self.radioView2.setChangeOnCompletionHandler(changeOnCompletionHandler: radioViewHandler);
        self.radioView3.setChangeOnCompletionHandler(changeOnCompletionHandler: radioViewHandler);
        self.radioView0.isSelected=true;
        RadioView.optional=true

}

 ```
 
 - Forth:StatusButton
 
# Configure Successfully

## License

NavigationKit is released under the MIT license. [See LICENSE](https://github.com/salah-mohammed/NavigationKit/blob/master/LICENSE) for details.

# Developer's information to communicate

- salah.mohamed_1995@hotmail.com
- https://www.facebook.com/salah.shaker.7
- +972597105861 (whatsApp And PhoneNumber)


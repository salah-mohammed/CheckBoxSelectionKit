# Result

![alt text](https://github.com/salah-mohammed/NavigationKit/blob/master/NavigationKitExample/example.gif)

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

if you want to set default style 'if Viewcontroller not implement NavigationInfoDelegate'
```swift
NavigationManager.shared.defaultData = NavigationData.init(NavigationManager.NavigationStyle.custom(NavigationManager.BarColor.customColor(UIColor.blue), titleColor:  UIColor.white))

 ```
 
 - Forth:StatusButton

if you want to set default style 'if Viewcontroller not implement NavigationInfoDelegate'
```swift
NavigationManager.shared.defaultData = NavigationData.init(NavigationManager.NavigationStyle.custom(NavigationManager.BarColor.customColor(UIColor.blue), titleColor:  UIColor.white))

 ```
 
# Configure Successfully

# You can refresh navigation style by 
```swift
(self.navigationController as? MainNavigationController)?.refrehNavigationData();
 ```
## License

NavigationKit is released under the MIT license. [See LICENSE](https://github.com/salah-mohammed/NavigationKit/blob/master/LICENSE) for details.

# Developer's information to communicate

- salah.mohamed_1995@hotmail.com
- https://www.facebook.com/salah.shaker.7
- +972597105861 (whatsApp And PhoneNumber)


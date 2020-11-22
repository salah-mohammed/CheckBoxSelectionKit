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
- First

```swift
public class MainNavigationController: NavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        NavigationManager.shared.navigationController=self;
        // Do any additional setup after loading the view.
    }
    
}
```
- Second

if you want set Navigation bar transparent and change title color .
```swift
class FirstViewController: UIViewController,NavigationDelegate {
 
    var navigationData:NavigationData=NavigationData.init(NavigationManager.NavigationStyle.custom(NavigationManager.BarColor.transparent,titleColor:UIColor.black))
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
 }

 ```
 
 if you want to set Navigation bar color and set title color for it.
 
 ```swift

  class SecondViewController: UIViewController,NavigationDelegate {
  
  var navigationData: NavigationData=NavigationData.init(NavigationManager.NavigationStyle.custom(NavigationManager.BarColor.customColor(UIColor.blue), titleColor:  UIColor.white))
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
```
if you want to hide Navigation bar.

 ```swift
 class ThiredViewController: UIViewController,NavigationDelegate {

    var navigationData: NavigationData=NavigationData.init(NavigationManager.NavigationStyle.hide);
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```

if you want to set background image for Navigation bar and set title color for it.

 ```swift
 class ForthViewController: UIViewController,NavigationDelegate {

    var navigationData: NavigationData=NavigationData.init(NavigationManager.NavigationStyle.custom(NavigationManager.BarColor.backgroundImage(UIImage.init(named:"navigationImage")!), titleColor: UIColor.white))
    
        public override func viewDidLoad() {
        super.viewDidLoad()
    }
}
 ```
- Thired

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


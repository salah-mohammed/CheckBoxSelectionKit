//
//  RadioView.swift
//  CustomRadioView
//
//  Created by Salah on 10/4/18.
//  Copyright © 2018 Salah. All rights reserved.
//

import Foundation
import UIKit

open class RadioView: UIView {
   public typealias ChangeOnCompletionHandler = (RadioView,Bool) -> Void

    // should select one item at least
    public static var optional:Bool = false;
    @IBOutlet open var  other:[RadioView]!
    
    open var isSelected: Bool=false{
        didSet{
                for handler  in self.changeOnCompletionHandler {
                    handler(self,self.isSelected);
                }
        }
    }
    // this for implement
   open var changeOnCompletionHandler:[ChangeOnCompletionHandler]=[ChangeOnCompletionHandler]();
    
   open func setChangeOnCompletionHandler(changeOnCompletionHandler:@escaping ChangeOnCompletionHandler){
        self.changeOnCompletionHandler.append(changeOnCompletionHandler);
        
    }
    
    func otherButtonsOff(){
        if  self.other != nil {
            for object:RadioView in self.other{
                object.isSelected=false;
            }
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleClick))
        self.addGestureRecognizer(tap)
//        crossOutlet(current: self);
        
    }
    @objc func handleClick(){
        if self.isSelected == true{
            if RadioView.optional==true {
                self.isSelected=false;
            }else{
                self.isSelected=true;
            }
        }else{
            self.otherButtonsOff()
            self.isSelected=true;
        }
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
//    open override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//    }
    func crossOutlet(current:RadioView){
        if current.other != nil {
        var allButtons = current.other
            allButtons?.append(current)
        for item in current.other {
            var arra:[RadioView] = (allButtons ?? []).filter { (tempItem) -> Bool in return  tempItem != item }
            item.other=arra;
            }
        }
    }
}

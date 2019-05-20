//
//  RadioButton.swift
//  TestApp
//
//  Created by Salah on 9/1/18.
//  Copyright © 2018 Salah. All rights reserved.
//

import UIKit

open class RadioButton: UIButton {
   public typealias  ChangeOnCompletionHandler = (RadioButton,Bool) -> Void
    static var optional:Bool = false;

    var relatedViews:[UIView]=[UIView]();
    @IBOutlet var  other:[RadioButton]!
    override open var isSelected: Bool{
        didSet{
            if changeOnCompletionHandler != nil {
                self.changeOnCompletionHandler(self,self.isSelected);
                if self.isSelected {
                    self.otherButtonsOff();
                }
            }
        }
    }
  open  var changeOnCompletionHandler:ChangeOnCompletionHandler!
   open  func setChangeOnCompletionHandler(changeOnCompletionHandler:@escaping ChangeOnCompletionHandler){
        self.changeOnCompletionHandler = changeOnCompletionHandler;
    }
    
    func otherButtonsOff(){
        if  self.other != nil {
        for object:RadioButton in self.other{
            object.isSelected=false;
        }
        }
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        self.addTarget(self, action: #selector(handleClick), for: .touchUpInside)

    }
    @objc func handleClick(){
        if self.isSelected == true{
            if RadioButton.optional==true {
                self.isSelected=false;
            }else{
                self.isSelected=true;
            }
        }else{
            self.otherButtonsOff()
            self.isSelected=true;
        }
    }
    func setup(){
        self.isSelected=false;
        self.otherButtonsOff();
    }
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */

}

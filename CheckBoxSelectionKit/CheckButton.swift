//
//  CheckButton.swift
//  Jobs
//
//  Created by Salah on 11/24/18.
//  Copyright © 2018 Salah. All rights reserved.
//

import UIKit
struct Constant {
    public  struct Handlers {
        
    }
}
class CheckButton: UIButton {
    typealias ChangeOnCompletionHandler = (CheckButton,Bool) -> Void
    var changeOnCompletionHandler:ChangeOnCompletionHandler!
    var on:Bool=false{
        didSet{
            if changeOnCompletionHandler != nil {
                self.changeOnCompletionHandler(self,self.on);
            }
        }
    }
    func setChangeOnCompletionHandler(changeOnCompletionHandler:@escaping ChangeOnCompletionHandler){
        self.changeOnCompletionHandler = changeOnCompletionHandler;
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

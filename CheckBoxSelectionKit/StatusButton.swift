//
//  StatusButton.swift
//  EnnnerVoice
//
//  Created by Salah on 7/10/18.
//  Copyright © 2018 Salah. All rights reserved.
//

import UIKit

open class StatusButton: UIButton {
   public typealias ChangeOnCompletionHandler = (StatusButton,Any) -> Void
    @IBOutlet open var  other:[StatusButton]!

   open var changeOnCompletionHandler:ChangeOnCompletionHandler!
   open var status:Any!{
        didSet{
            if changeOnCompletionHandler != nil {
                self.changeOnCompletionHandler(self,self.status);
            }
        }
    }
    open func setChangeOnCompletionHandler(_ changeOnCompletionHandler:@escaping ChangeOnCompletionHandler){
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



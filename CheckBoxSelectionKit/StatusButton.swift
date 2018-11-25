//
//  StatusButton.swift
//  EnnnerVoice
//
//  Created by Salah on 7/10/18.
//  Copyright © 2018 Salah. All rights reserved.
//

import UIKit

class StatusButton: UIButton {
    typealias ChangeOnCompletionHandler = (StatusButton,Any) -> Void
    
    var changeOnCompletionHandler:ChangeOnCompletionHandler!
    var status:Any!{
        didSet{
            if changeOnCompletionHandler != nil {
                self.changeOnCompletionHandler(self,self.status);
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



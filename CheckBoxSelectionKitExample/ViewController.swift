//
//  ViewController.swift
//  CheckBoxSelectionKitExample
//
//  Created by Salah on 12/10/18.
//  Copyright © 2018 Salah. All rights reserved.
//

import UIKit
import CheckBoxSelectionKit

class ViewController: UIViewController {
    @IBOutlet weak var radioButton0: RadioButton!
    @IBOutlet weak var radioButton1: RadioButton!
    @IBOutlet weak var radioButton2: RadioButton!
    @IBOutlet weak var radioButton3: RadioButton!
    
    @IBOutlet weak var checkButton0: CheckButton!
    @IBOutlet weak var checkButton1: CheckButton!
    @IBOutlet weak var checkButton2: CheckButton!
    @IBOutlet weak var checkButton3: CheckButton!

    @IBOutlet weak var radioView0: RadioView!
    @IBOutlet weak var radioView1: RadioView!
    @IBOutlet weak var radioView2: RadioView!
    @IBOutlet weak var radioView3: RadioView!
    
    @IBOutlet weak var statusButton0: StatusButton!
    @IBOutlet weak var statusButton1: StatusButton!
    @IBOutlet weak var statusButton2: StatusButton!
    @IBOutlet weak var statusButton3: StatusButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        //////////////////////////////////////////////////////////////////////////////////////////////

    }


}


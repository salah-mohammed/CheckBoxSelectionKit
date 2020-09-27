//
//  AccountTypeView.swift
//  CheckBoxSelectionKitExample
//
//  Created by Salah on 9/22/20.
//  Copyright © 2020 Salah. All rights reserved.
//


import UIKit
import CheckBoxSelectionKit

@IBDesignable

open class AccountTypeView: RadioView {
    @IBOutlet weak var borderView: UIView!
    @IBInspectable var normalImage: UIImage?
    @IBInspectable var selectedImage: UIImage?

    @IBInspectable var normalColor: UIColor? = UIColor.gray
    @IBInspectable var selectedColor: UIColor?=UIColor.red
    @IBInspectable var title: String? {
        get {
            return self.lblTitle.text;
        }
        set {
            self.lblTitle.text = newValue;
        }
    }
    var contentView : UIView?
    @IBOutlet var btnImage : UIButton?
    @IBOutlet weak var lblTitle: UILabel!
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        xibSetup()
//    }
//     init(frame: CGRect) {
//    super.init(frame:frame)
//
//    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }

    func xibSetup(){
        contentView = loadViewFromNib()
        
        contentView!.frame = bounds
        // Adding custom subview on top of our view
        addSubview(contentView!)
        
        self.contentView!.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": contentView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": contentView]))
        
        
        
        self.setupView();
    }
    func loadViewFromNib() -> UIView! {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    func setupView(){

        self.setChangeOnCompletionHandler { (radio:RadioView, value:Bool) in
            if value {
                self.borderView.layer.borderColor = self.selectedColor?.cgColor;
                self.borderView.backgroundColor = self.selectedColor;
                self.lblTitle.textColor = self.selectedColor;
                self.btnImage?.setImage(self.selectedImage, for: .normal) ;

                
            }else{
                self.borderView.layer.borderColor = self.normalColor?.cgColor;
                self.borderView.backgroundColor = .white;
                self.lblTitle.textColor = self.normalColor;
                self.btnImage?.setImage(self.normalImage, for: .normal);


            }
        }
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib();
        self.borderView.layer.borderColor = self.normalColor?.cgColor;
        self.borderView.backgroundColor = .white;
        self.btnImage?.setImage(self.normalImage, for: .normal);
        self.lblTitle.textColor = self.normalColor;
        
    }
}

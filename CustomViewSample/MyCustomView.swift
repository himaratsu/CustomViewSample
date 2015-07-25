//
//  MyCustomView.swift
//  CustomViewSample
//
//  Created by himara2 on 2015/07/24.
//  Copyright (c) 2015年 himara2. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!

    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            self.layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var titleText: String = "" {
        didSet {
            titleLabel.text = titleText
        }
    }
    
    @IBInspectable var iconImage: UIImage? {
        didSet {
            iconImageView.image = iconImage
        }
    }
    
    @IBInspectable var buttonTitle: String = "" {
        didSet {
            okButton.setTitle(buttonTitle, forState: .Normal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        comminInit()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        comminInit()
    }

    private func comminInit() {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "MyCustomView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil).first as! UIView
        addSubview(view)
        
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[view]|", options:NSLayoutFormatOptions(0), metrics:nil, views: bindings))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[view]|", options:NSLayoutFormatOptions(0), metrics:nil, views: bindings))
    }
}

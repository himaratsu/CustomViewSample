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

    @IBOutlet weak private var iconImageView: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var okButton: UIButton!

    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
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
            okButton.setTitle(buttonTitle, for: UIControlState())
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        comminInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        comminInit()
    }

    fileprivate func comminInit() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "MyCustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: bindings))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options:NSLayoutFormatOptions(rawValue: 0), metrics:nil, views: bindings))
    }
    
    @IBAction func okButtonTouched(_ sender: AnyObject) {
        let appStoreUrl = "https://itunes.apple.com/app/id934444072?mt=8"
        if let URL = URL(string: appStoreUrl) {
            if UIApplication.shared.canOpenURL(URL) {
                UIApplication.shared.openURL(URL)
            }
        }
    }
    
}

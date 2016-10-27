//
//  MyCustomView.swift
//  CustomViewSample
//
//  Created by himara2 on 2015/07/24.
//  Copyright (c) 2015年 himara2. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView, XibInstantiatable {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!

    
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
            okButton.setTitle(buttonTitle, for: [.normal, .highlighted, .selected])
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        instantiate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        instantiate()
    }

    fileprivate func comminInit() {
        instantiate()
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

//
//  XibInstantiatable.swift
//  CustomViewSample
//
//  Created by 平松　亮介 on 2016/10/27.
//  Copyright © 2016年 himara2. All rights reserved.
//

import UIKit

protocol XibInstantiatable {
    func instantiate()
}

extension XibInstantiatable where Self: UIView {
    func instantiate() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        addSubview(view)

        view.translatesAutoresizingMaskIntoConstraints = false
        
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|[view]|",
            options:NSLayoutFormatOptions(rawValue: 0),
            metrics:nil,
            views: bindings))
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|[view]|",
            options:NSLayoutFormatOptions(rawValue: 0),
            metrics:nil,
            views: bindings))
    }
}

//
//  ViewController.swift
//  CustomViewSample
//
//  Created by himara2 on 2015/07/24.
//  Copyright (c) 2015年 himara2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: MyCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // use from code
        let customView = MyCustomView(frame: CGRect(x: 50, y: 100, width: 270, height: 200))
        customView.titleLabel.text = "Hello!"
        view.addSubview(customView)
    }
}


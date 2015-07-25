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

        customView.titleLabel.text = "Hello"
    }
}


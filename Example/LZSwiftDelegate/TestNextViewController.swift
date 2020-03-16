//
//  TestNextViewController.swift
//  LZSwiftDelegate_Example
//
//  Created by Sun Moon on 2020/3/16.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import LZSwiftDelegate

class TestNextViewController: UIViewController {

    var newDelegate = LZSwiftDelegate<Void, Void>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        _ = newDelegate.call()
    }
}

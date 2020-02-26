//
//  TwoViewController.swift
//  LZSwiftDelegate_Example
//
//  Created by Sun Moon on 2020/2/26.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import LZSwiftDelegate

class TwoViewController: UIViewController {

    var delegate: LZSwiftDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let event = LZSwiftEvent.init("b", params: ["name": "XXX"])
        self.delegate?.onAction(event)
    }
    
}

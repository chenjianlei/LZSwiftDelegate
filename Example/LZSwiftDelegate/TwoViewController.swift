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

//    var delegate: LZSwiftDelegate?
    
    var newDelegate = LZSwiftDelegate<Int, Bool>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = TestNextViewController()
//        vc.newDelegate.delegate(on: self) { [weak self] (_, a) -> Bool in
//            print(a)
//            _ = self?.newDelegate.call(a)
//            return false
//        }
        
        vc.newDelegate.delegate(on: self) { [weak self] (_, p) in
            print(p)
            _ = self?.newDelegate.call(888)
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    deinit {
        print(#function)
    }
}

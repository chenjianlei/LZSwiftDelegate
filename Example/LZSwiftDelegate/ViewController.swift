//
//  ViewController.swift
//  LZSwiftDelegate
//
//  Created by chenjianlei on 02/26/2020.
//  Copyright (c) 2020 chenjianlei. All rights reserved.
//

import UIKit
import LZSwiftDelegate

class ViewController: UIViewController, LZSwiftDelegate {
  
    var delegate: LZSwiftDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = TwoViewController()
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
    
    func onAction(_ event: LZSwiftEvent) {
        if event.name == "a" {
            print("a")
        } else if event.name == "b" {
            print("b")
        } else if event.name == "c" {
            print("c")
        } else {
            self.delegate?.onAction(event)
        }
    }
}


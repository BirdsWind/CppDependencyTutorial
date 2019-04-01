//
//  ViewController.swift
//  VanillaSwift
//
//  Created by ceciliah on 3/3/31 H.
//  Copyright © 31 Heisei Humlan. All rights reserved.
//

import UIKit
import CppDependencyTutorial

class ViewController: UIViewController {

    override func viewDidLoad() {
        let instance = CppDependencyWrapper()
        let result = instance.randomString(5)
        print("result \(result)")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


//
//  ViewController.swift
//  framework dependency
//
//  Created by Kenny Lin on 2019/3/22.
//  Copyright © 2019 Kenny Lin. All rights reserved.
//

import UIKit

import A

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        
        print("module a can be initiated!")
        let a = A()
        a.printA()
        a.printBinA()
        
        // All the bundle function calls can not find B framework
        //        let path = Bundle.main.path(forResource: "B", ofType: "framework")
        //        print("B.framework == \(String(describing: path))")
        //
        
        //        if let bundleB = Bundle(identifier: "B.framework") {
        //            print("bundle B == \(bundleB)")
        //        }
        
        //        let bundleBB = Bundle(for: B.self)
        //        print("bundle BB == \(bundleBB)")
    }
}


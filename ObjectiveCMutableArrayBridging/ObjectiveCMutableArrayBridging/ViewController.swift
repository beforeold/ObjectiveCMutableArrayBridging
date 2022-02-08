//
//  ViewController.swift
//  ObjectiveCMutableArrayBridging
//
//  Created by BrookXy on 2022/2/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testCastingMutableArray()
    }
    
    func testCastingMutableArray() {
        let result = MLCParseResult()
        
        // cast mutableArray will crash here in iOS 15.4 beta
        let array = result.mutableArray as? [NSObject]
        
        print(array as Any)
    }
}


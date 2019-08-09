//
//  ViewController.swift
//  AppCreationPractise
//
//  Created by fordlabs on 07/06/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click" , for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(button)
        
        let decrementbutton = UIButton()
        decrementbutton.frame = CGRect(x: 170, y: 300, width: 60, height: 60)
        decrementbutton.setTitle("click2", for: .normal)
        decrementbutton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementbutton)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount),for: UIControl.Event.touchUpInside)
        
        decrementbutton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        
        count += 1
        label.text = "\(count)"
    }

    @objc func decrementCount() {
        
        count -= 1
        label.text = "\(count)"
    }

}


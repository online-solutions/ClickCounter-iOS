//
//  ViewController.swift
//  Click Counter
//
//  Created by KhanhPhung on 27/4/15.
//  Copyright (c) 2015 Online Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
//        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // TextField
        var textField = UITextField()
        textField.frame = CGRectMake(250, 150, 60, 60)
        textField.text = "0"
        
        self.view.addSubview(textField)
        self.textField = textField
        

        // Button Increase
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Increase", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Button Descrease
        var btnDescrease = UIButton()
        btnDescrease.frame = CGRectMake(250, 250, 60, 60)
        btnDescrease.setTitle("Descrease", forState: .Normal)
        btnDescrease.setTitleColor(UIColor.redColor(), forState: .Normal)
        
        self.view.addSubview(btnDescrease)
        btnDescrease.addTarget(self, action: "descrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount(){
        let val = textField.text.toInt()
        if val == nil {
            println("Not a valid number, default = 0")
            self.count = 0
        }
        self.count++
        self.textField.text = "\(self.count)"
        self.label.text = "\(self.count)"
        println(self.textField.text)
    }

    func descrementCount(){
        let val = textField.text.toInt()
        if val == nil {
            println("Not a valid number, default = 0")
            self.count = 0
        }
        self.count--
        self.textField.text = "\(self.count)"
        self.label.text = "\(self.count)"
        println(self.textField.text)
    }
}


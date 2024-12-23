//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Vinit on 23/12/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .systemBackground
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "Hello World!"
//        label.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        label.textAlignment = .center
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        let button = UIButton()
        button.setTitle("Go Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .green
//        button.frame = CGRect(x: 6000, y: 1000, width: view.frame.width, height: view.frame.height)
        button.frame = CGRect(x: 6000, y: 1000, width: 500, height: 300)
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
//        button.addTarget(self, action: #selector(self.pressed), for: UIControl.Event.touchUpInside)
        
    }
    
    
    @objc func pressed(sender:UIButton!)
    {
       print("button is Pressed")
    }
}

//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vinit on 23/12/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    var category: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
        print("ResultViewController:bmiValue:: \(bmiValue ?? "NA")")
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
        view.backgroundColor = color
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func recalculateClicked(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
}

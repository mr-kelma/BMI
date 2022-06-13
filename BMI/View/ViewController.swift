//
//  ViewController.swift
//  BMI
//
//  Created by Valery Keplin on 13.06.22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightChanger(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " м"
    }
    
    @IBAction func weightChanger(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + " кг"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2 )
        print(String(format: "%.1f", bmi))
    }
}

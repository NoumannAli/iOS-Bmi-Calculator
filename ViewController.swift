//
//  ViewController.swift
//  nouman.BmiCalculator
//
//  Created by Nouman Ali on 10/24/20.
//

import UIKit

class ViewController: UIViewController {
//variables
    var bmiValue = "0.0"
    @IBOutlet weak var resultBox: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLable: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Capture slider value
    @IBAction func heightValueAction(_ sender: UISlider) {
        
        let height = String(format : "%.2f" , sender.value)
        heightLable.text = ("\(height)Cm")
    }
    
    //Capture slider value
    @IBAction func weightValue(_ sender: UISlider) {
        let weight = String(format : "%.0f" , sender.value)
        weightLabel.text = ("\(weight)Kg")
    }
    //Calculate weight / height*height to calculate BMI
    @IBAction func calculateButton(_ sender: UIButton) {
   
        let height =  heightSlider.value
        let weight = weightSlider.value
        let totalBmi = weight / (height*height)
        //final bmi value
      bmiValue = String (format:"%.2f" , totalBmi)
        
        //switch to next screen
        self.performSegue(withIdentifier: "goToResult", sender: self)

      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            
            
            let  destinationVC =  segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}




//@IBAction func calculateButton(_ sender: UIButton) {
//    let height = heightSlider.value
//    let weight = weightSlider.value
//
//    let calculateBmi = weight / (height*height)
//
//    let totalBmi = String(format:"%.2f", calculateBmi)
//
//    bmiValue.text = "Your BMI Is \n\(totalBmi) \n Eat Some Snacks"
//
//                     }

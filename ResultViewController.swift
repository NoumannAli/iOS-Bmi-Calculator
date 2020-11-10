//
//  ResultViewController.swift
//  nouman.BmiCalculator
//
//  Created by Nouman Ali on 10/25/20.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    
    //Launch Screen
    override func viewDidLoad() {
        super.viewDidLoad()
        //If bmi is above 27 go to gym if less eat some snacks
        if bmiValue! > String(27.0) {
        BMIResulr.text =  " \(bmiValue! as String) \n \nGo To Gym"
        } else {
            
            BMIResulr.text =  " \(bmiValue! as String) \n \nEat Some Snacks"
        }
    }
    

    @IBOutlet weak var BMIResulr: UILabel!
    
    
    //Return to main page
    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    /*
     
     
     
     
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

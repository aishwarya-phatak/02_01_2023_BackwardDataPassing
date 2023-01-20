//
//  ThirdViewController.swift
//  02_01_2023_BackwardDataPassing
//
//  Created by Vishal Jagtap on 20/01/23.
//

import UIKit

class ThirdViewController: UIViewController, MathematicalOperations{
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberTwoTextField: UITextField!
    @IBOutlet weak var numberOneTextfield: UITextField!
    
    var numberOne : Int?
    var numberTwo : Int?
    var resultOfAddition : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnClickToPerformOpertions(_ sender: Any) {
        
        numberOne = Int(numberOneTextfield.text!)
        numberTwo = Int(numberTwoTextField.text!)
        resultOfAddition = addition(n1: numberOne!, n2: numberTwo!)
        self.resultLabel.text = (resultOfAddition?.codingKey.stringValue)
        
        print(resultOfAddition!)
    }
    
    func addition(n1 : Int, n2 : Int)->Int {
        
        return n1 + n2
        
    }
    
    func multiply() {
        print("Multiply method")
    }
    
    func subtract() {
        print("Subtract Method")
    }
    
    func divide() {
        print("Divide method")
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

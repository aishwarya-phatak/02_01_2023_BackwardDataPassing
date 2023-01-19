//
//  SecondViewController.swift
//  02_01_2023_BackwardDataPassing
//
//  Created by Vishal Jagtap on 19/01/23.
//

import UIKit

//step 1 : Create protocol & mention function without body because protocol cannot have functions with body or definition
/*protocol BackDataPassingProtocol{
   func passDataToFirstViewController(text : String)
}*/

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    //step 2 : create delegate (property of protocol)
    var delegate : BackwardDataPassing?
    var nameText : String = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
    }
    @IBAction func btnSendData(_ sender: Any) {
        guard let delegateSVC = delegate else {
            print("No delegate found")
            return  }
        nameText = self.nameTextField.text ?? "Yuvaraj"
        
        delegateSVC.passDataBack(text: nameText)            //step 3 : call function on delegate and pass data extracted from field
        navigationController?.popViewController(animated: true)
        
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

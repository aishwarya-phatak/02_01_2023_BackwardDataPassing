//
//  ViewController.swift
//  02_01_2023_BackwardDataPassing
//
//  Created by Vishal Jagtap on 19/01/23.
//

import UIKit

class ViewController: UIViewController, BackwardDataPassing{                //step 4: conform to protocol
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func btnNavigateToSecondViewController(_ sender: Any) {
        var secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        secondViewController?.delegate = self       //step 6 : assign self to delegate on svc instance
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    //step 5 : implement the method of protocol
    func passDataBack(text: String) {
        self.nameLabel.text = text
    }
}

//
//  ResultViewController.swift
//  Calculate The Bill App
//
//  Created by Melih Cesur on 11.09.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var perPerson : String!
    
    var resultText : String!

    
    @IBOutlet weak var perPersonValue: UILabel!
    
   
    @IBOutlet weak var resultTextLabel: UILabel!
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        perPersonValue.text = perPerson
        resultTextLabel.text = resultText
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}

//
//  ViewController.swift
//  Calculate The Bill App
//
//  Created by Melih Cesur on 11.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var splitNumber: UILabel!
    
    
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var tenButton: UIButton!
    
    @IBOutlet weak var twentyButton: UIButton!
    
    
    var calculateBrain = CalculateBrain()
    
    var selectedItem : UIButton?
    
    var tip : Float = 0
    
    var split : Float = 0
    
    var totalBill : Float = 0
    
    var tipForPerson : Float = 0
    
    
    override func viewDidLoad() {
        splitNumber.text = "1"
        
        view.backgroundColor = .white
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

    

         view.addGestureRecognizer(tap)
        
       
    }
    
   
    
    @IBAction func tfController(_ sender: UITextField) {
        totalBill = Float(sender.text!)!
        
        print("total bill güncellenen deger : \(totalBill)")
    }
    
    
    
    
    @IBAction func changeSplitNumber(_ sender: UIStepper) {
        
        split = Float(sender.value)
        
      
    
        splitNumber.text = String(format:"%.f",sender.value)
    }
    
    
    @IBAction func buttonActivity(_ sender: UIButton) {
        selectedItem?.backgroundColor = UIColor.clear
        selectedItem?.tintColor = UIColor.systemGreen
        
        
        if(sender.titleLabel?.text == "0%"){
            tip = 0
            selectedItem = zeroButton
            
        }
        else if(sender.titleLabel?.text == "10%"){
          tip = 10
            selectedItem = tenButton
        }
        else if(sender.titleLabel?.text == "20%"){
         tip = 20
            selectedItem = twentyButton
        }
        
    
        selectedItem?.tintColor = .white
        selectedItem?.backgroundColor = .systemGreen
        
        
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "resultPage") as! ResultViewController
        
        let resultForPerson = calculateBrain.calculateForPerson(totalBill: totalBill, tip: String(tip), split: split)
        
 
        

        controller.modalPresentationStyle = .fullScreen
        present(controller,animated: true,completion: nil)
        
        let splitResult = String(format:"%.f",split)
        let tipResult = String(format:"%.f",tip)
        
        controller.perPersonValue.text = "$" + String(format:"%.f",resultForPerson)
        controller.resultTextLabel.text = "Split between \(splitResult)\n people, with %\(tipResult) tip."
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}


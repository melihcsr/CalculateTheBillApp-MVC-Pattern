//
//  CalculateBrain.swift
//  Calculate The Bill App
//
//  Created by Melih Cesur on 11.09.2023.
//

import Foundation



struct CalculateBrain{
    
    
    func calculateForPerson(totalBill : Float, tip : String , split : Float ) -> Float{
        
        var resultForPerson : Float = 0
        
        if(tip == "0%"){
        resultForPerson = totalBill / split
        }
        else{
            resultForPerson = (totalBill + ((totalBill / 100) * Float(tip)!)) / split
        }
       
        return resultForPerson
    }
    

    
}

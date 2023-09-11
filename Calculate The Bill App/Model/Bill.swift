//
//  Bill.swift
//  Calculate The Bill App
//
//  Created by Melih Cesur on 11.09.2023.
//

import Foundation


struct Bill {
    
    var totalBill : Float
    var tip : Float
    var split : Float
    var totalForPerson : Float
    
    init(totalBill: Float, tip: Float, split: Float, totalForPerson: Float) {
        self.totalBill = totalBill
        self.tip = tip
        self.split = split
        self.totalForPerson = totalForPerson
    }
}

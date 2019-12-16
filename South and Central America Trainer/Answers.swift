//
//  s.swift
//  South and Central America Trainer
//
//  Created by Ishaan Koratkar on 12/4/19.
//  Copyright © 2019 Ishaan Koratkar. All rights reserved.
//
 
import Foundation


struct Capitals {
    let caps: Array = ["Quito", "Bogotá", "Caracas", "Georgetown", "Paramaribo", "Cayenne", "Lima", "La paz", "Asunción", "Brasilia", "Santiago", "Buenos Aires", "Montevideo"]
    
    

    func adder(arrayNum: Int?) -> String {
        let capitalValue = "\(caps[arrayNum!])"
        return capitalValue
    }
    
    
    
}

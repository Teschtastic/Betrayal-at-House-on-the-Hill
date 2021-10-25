//
//  Character.swift
//  Betrayal at House on the Hill
//
//  Created by Sean Tesch on 10/25/21.
//

import Foundation
import UIKit

struct Character {
    let name: String
    let color: UIColor
    
    let age: Int
    let birthday: DateComponents
    
    let height: Int     // Inches
    let weight: Int     // Pounds
    
    let hobbies: [String]
    let description: String
    let fears: String
    
    let speed: [Int]
    let might: [Int]
    let sanity: [Int]
    let knowledge: [Int]
    
    var speedIndex: Int
    var mightIndex: Int
    var sanityIndex: Int
    var knowledgeIndex: Int
    
    init(n: String, c: UIColor,
         a: Int, b: DateComponents,
         he: Int, we: Int,
         h: [String], d: String, f: String,
         sp: [Int], mi: [Int], sa: [Int], kn: [Int],
         spI: Int, miI: Int, saI: Int, knI: Int) {
        
        name = n
        color = c
        
        age = a
        birthday = b
        
        height = he
        weight = we
        
        hobbies = h
        description = d
        fears = f
        
        speed = sp
        might = mi
        sanity = sa
        knowledge = kn
        
        speedIndex = spI
        mightIndex = miI
        sanityIndex = saI
        knowledgeIndex = knI
    }
}

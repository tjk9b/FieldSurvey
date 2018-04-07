//
//  classification.swift
//  FieldSurvey
//
//  Created by Tiara Jarrett on 4/6/18.
//  Copyright © 2018 Tiara Jarrett. All rights reserved.
//
import UIKit

enum Field: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}

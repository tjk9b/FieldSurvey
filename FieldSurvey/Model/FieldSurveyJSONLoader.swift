//
//  FieldSurveyJSONLoader.swift
//  FieldSurvey
//
//  Created by Tiara Jarrett on 4/6/18.
//  Copyright © 2018 Tiara Jarrett. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader{
    
    class func load(fileName: String) -> [FieldSurvey]{
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldSurveyJSONParser.parse(data)
        }
        return observations
    }
    
}

//
//  FieldSurveyDetailViewController.swift
//  FieldSurvey
//
//  Created by Tiara Jarrett on 4/6/18.
//  Copyright © 2018 Tiara Jarrett. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?
    var dateFormatter  = DateFormatter()
    
    @IBOutlet weak var fieldsurveyimageview: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldsurveyimageview.image = fieldSurvey?.classification.image
        titleLabel.text = fieldSurvey?.title
        
        if let date = fieldSurvey?.date{
            dateLabel.text = dateFormatter.string(from: date)
        }else{
            dateLabel.text = ""
        }
        
        descriptionText.text = fieldSurvey?.description
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

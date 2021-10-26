//
//  CharacterInfoViewController.swift
//  Betrayal at House on the Hill
//
//  Created by Sean Tesch on 10/22/21.
//

import UIKit

class CharacterInfoViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    @IBOutlet weak var fearsLabel: UILabel!
    
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var mightLabel: UILabel!
    @IBOutlet weak var sanityLabel: UILabel!
    @IBOutlet weak var knowledgeLabel: UILabel!
    
    var name: String! = ""
    var age: String! = ""
    var birthday: DateComponents! = DateComponents(year:2021, month: 1, day: 1)
    var desc: String! = ""
    var hobbies: String! = ""
    var fears: String! = ""
    var color: UIColor! = UIColor.black
    
    var speed: String! = ""
    var might: String! = ""
    var sanity: String! = ""
    var knowledge: String! = ""
    
    let calendar = Calendar(identifier: .gregorian)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = name
        ageLabel.text = age
        birthdayPicker.setDate(calendar.date(from: birthday!)!, animated: true)
        
        descriptionLabel.text = desc
        hobbiesLabel.text = hobbies
        fearsLabel.text = fears
        
        speedLabel.text = speed
        mightLabel.text = might
        sanityLabel.text = sanity
        knowledgeLabel.text = knowledge
    }
}

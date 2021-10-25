//
//  CharacterInfoViewController.swift
//  Betrayal at House on the Hill
//
//  Created by Sean Tesch on 10/22/21.
//

import UIKit

class CharacterInfoViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var mightLabel: UILabel!
    @IBOutlet weak var sanityLabel: UILabel!
    @IBOutlet weak var knowledgeLabel: UILabel!
    
    var name: String! = ""
    var speed: String! = ""
    var might: String! = ""
    var sanity: String! = ""
    var knowledge: String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = name
        speedLabel.text = speed
        mightLabel.text = might
        sanityLabel.text = sanity
        knowledgeLabel.text = knowledge
    }
}

//
//  CharacterCellTableViewCell.swift
//  Betrayal at House on the Hill
//
//  Created by Sean Tesch on 10/21/21.
//

import UIKit

class CharacterCellTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var birthday: UIDatePicker!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

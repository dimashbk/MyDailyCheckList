//
//  TaskTypeCellTableViewCell.swift
//  MyDiary
//
//  Created by Dinmukhamed on 08.12.2022.
//

import UIKit

class TaskTypeCell: UITableViewCell {

    @IBOutlet weak var typeTitle: UILabel!
    
    @IBOutlet weak var typeDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

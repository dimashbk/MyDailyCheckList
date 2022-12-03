//
//  TaskCellTableViewCell.swift
//  MyDiary
//
//  Created by Dinmukhamed on 03.12.2022.
//

import UIKit

class TaskCell: UITableViewCell {
    

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var symbol: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

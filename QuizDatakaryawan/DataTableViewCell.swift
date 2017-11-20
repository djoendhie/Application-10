//
//  DataTableViewCell.swift
//  QuizDatakaryawan
//
//  Created by Macbook pro on 27/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    @IBOutlet weak var labelNama: UILabel!
    @IBOutlet weak var labelStaff: UILabel!
    @IBOutlet weak var Golongan: UILabel!
    @IBOutlet weak var labelGaji: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

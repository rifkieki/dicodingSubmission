//
//  destinasiTableViewCell.swift
//  dicodingSubmission
//
//  Created by Rifki Triaditiya Putra on 24/05/21.
//

import UIKit

class destinasiTableViewCell: UITableViewCell {

   
   
    @IBOutlet weak var photoDestination: UIImageView!
    @IBOutlet weak var destinationName: UILabel!
    @IBOutlet weak var descDestination: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

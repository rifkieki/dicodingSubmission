import UIKit

class destinasiTableViewCell: UITableViewCell {

   
   
    @IBOutlet weak var photoDestination: UIImageView!
    @IBOutlet weak var destinationName: UILabel!
    @IBOutlet weak var descDestination: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

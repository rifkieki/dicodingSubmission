import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var destinationName: UILabel!
    @IBOutlet weak var photoDestination: UIImageView!
    @IBOutlet weak var descriptionDestination: UILabel!
    
    var destinationPlaces: destinationPlace?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = destinationPlaces {
            photoDestination.image = result.photoDestination
            destinationName.text = result.destinationName
            descriptionDestination.text = result.descriptionDestination
        }
    }

    

}

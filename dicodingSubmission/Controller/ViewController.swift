import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var destinasiTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationItem.title = "Destinasi Bintan"
        
        destinasiTableView.dataSource = self
        
        destinasiTableView.delegate = self
        
        destinasiTableView.register(UINib(nibName: "destinasiTableViewCell", bundle: nil), forCellReuseIdentifier: "DestinasiCell")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinationPlaces.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DestinasiCell", for: indexPath) as? destinasiTableViewCell {
            
            let destinationPlace = destinationPlaces[indexPath.row]
            cell.destinationName.text = destinationPlace.destinationName
            cell.descDestination.text = destinationPlace.descriptionDestination
            cell.photoDestination.image = destinationPlace.photoDestination
            
            cell.photoDestination.layer.cornerRadius =  cell.photoDestination.frame.height / 2
            cell.photoDestination.clipsToBounds = true
            return cell
            
        } else {
        return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.destinationPlaces = destinationPlaces[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
}


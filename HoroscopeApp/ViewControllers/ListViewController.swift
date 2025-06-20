import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var horoscopeList = Horoscope.horoscopeList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horoscopeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HoroscopeCell", for: indexPath) as! HoroscopeViewCell
        cell.render(horoscope: horoscopeList[indexPath.row])
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            let horoscope = horoscopeList[indexPath.row]
            detailViewController.horoscope = horoscope
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}

// MARK: - UISearchBarDelegate

extension ListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            horoscopeList = Horoscope.horoscopeList
        } else {
            horoscopeList = Horoscope.horoscopeList.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
        tableView.reloadData()
    }
    }

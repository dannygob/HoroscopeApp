import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var horoscopeImageView: UIImageView!
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    @IBOutlet weak var horoscopeDatesLabel: UILabel!
    
    @IBOutlet weak var horoscopeLuckTextView: UITextView!
    @IBOutlet weak var favoriteMenu: UIBarButtonItem!
    @IBOutlet weak var share: UIBarButtonItem!
    
    
    
    var horoscope: Horoscope!
    var isFavorite: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = horoscope.name
        
        horoscopeNameLabel.text = horoscope.name
        horoscopeDatesLabel.text = horoscope.dates
        horoscopeImageView.image = horoscope.getImage()
        
        isFavorite = SessionManager.isFavoriteHoroscope(id: horoscope.id)
        
        setFavoriteImage()
        
        getHoroscopeLuck(period: "daily")
    }
    
    func setFavoriteImage(){
        favoriteMenu.image = isFavorite ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
    }
    
    @IBAction func setFavorite(_ sender: Any) {
        isFavorite.toggle()
        if isFavorite {
            SessionManager.setFavoriteHoroscope(id: horoscope.id)
        } else {
            SessionManager.setFavoriteHoroscope(id: "")
        }
        setFavoriteImage()
    }
    
    @IBAction func share(_ sender: Any) {
        let shareText = "Mi horóscopo es \(horoscope.name) (\(horoscope.dates))"
        let activityVC = UIActivityViewController(activityItems: [shareText], applicationActivities: nil)
        present(activityVC, animated: true, completion: nil)
    }
    
    @IBAction func didChangePeriod(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            getHoroscopeLuck(period: "daily")
        case 1:
            getHoroscopeLuck(period: "weekly")
        default:
            getHoroscopeLuck(period: "monthly")
        }
        
    }
   
    func getHoroscopeLuck(period: String) {
        guard let url = URL(string:
            "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/\(period)?sign=\(horoscope.id)&day=TODAY") else {
            return// error
        }
        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                
                /*if let stringData = String(data: data, encoding: .utf8) {
                 print(stringData)*/
                
                guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    return //error
                }
                let jsonData = json["data"] as? [String: String]
                
                let result = jsonData?["horoscope_data"] ?? ""
                
                DispatchQueue.main.async {
                    self.horoscopeLuckTextView.text = result
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}


    

//
//  TableViewCell.swift
//  HoroscopeApp
//
//  Created by Tardes on 13/6/25.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {
    
    
    @IBOutlet weak var HoroscopeImgeView: UIImageView!
    @IBOutlet weak var HoroscopeNameLabel: UILabel!
    @IBOutlet weak var HoroscopeDateLabel: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    
    func render(horoscope: Horoscope) {
        
        HoroscopeNameLabel.text = horoscope.name
        HoroscopeDateLabel.text = horoscope.dates
        HoroscopeImgeView.image = horoscope.getImage()
        favoriteImageView.isHidden = !SessionManager.isFavoriteHoroscope(id: horoscope.id)   
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
    }
    
}


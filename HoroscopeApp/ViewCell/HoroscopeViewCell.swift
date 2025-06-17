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
    
    
    func render(horoscope: Horoscope) {
        
        HoroscopeNameLabel.text = horoscope.name
        HoroscopeDateLabel.text = horoscope.dates
        HoroscopeImgeView.image = horoscope.getImage()
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
    }
    
}


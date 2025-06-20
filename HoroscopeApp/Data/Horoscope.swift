//
//  Horoscope.swift
//  HoroscopeApp
//
//  Created by Tardes on 13/6/25.
//

import Foundation
import UIKit
struct Horoscope {
    let id: String
    let name: String
    let dates: String
    let imageFileName: String
    
    func getImage() -> UIImage {
        return UIImage(named: imageFileName)!
    }
    //preparar la lista que nos devuelve los signos
    
    static let horoscopeList: [Horoscope] = [
        Horoscope(id: "Aries", name: "Aries", dates: "21 marzo - 19 abril", imageFileName: "horoscope-icons/aries"),
        Horoscope(id: "Taurus", name: "Tauro", dates: "20 abril - 20 mayo", imageFileName: "horoscope-icons/taurus"),
        Horoscope(id: "Geminis", name: "Geminis", dates : "21 mayo - 20 junio", imageFileName: "horoscope-icons/gemini"),
        Horoscope(id: "Cancer", name: "Cancer", dates: "21 junio - 22 julio", imageFileName: "horoscope-icons/cancer"),
        Horoscope(id: "Leo", name: "Leo", dates: "23 julio - 22 agosto", imageFileName: "horoscope-icons/leo"),
        Horoscope(id: "Virgo", name: "Virgo", dates: "23 agosto - 22 septiembre", imageFileName: "horoscope-icons/virgo"),
        Horoscope(id: "Libra", name: "Libra", dates: "23 septiembre - 22 octubre", imageFileName: "horoscope-icons/libra"),
        Horoscope(id: "Escorpio", name: "Escorpio", dates: "23 octubre - 21 noviembre", imageFileName: "horoscope-icons/scorpio"),
        Horoscope(id: "Sagittarius", name: "Sagitario", dates: "22 noviembre - 21 diciembre", imageFileName: "horoscope-icons/sagittarius"),
        Horoscope(id: "Capricorn", name: "Capricornio", dates: "22 diciembre - 19 enero", imageFileName: "horoscope-icons/capricorn"),
        Horoscope(id: "Aquario", name: "Acuario", dates: "20 enero - 18 febrero", imageFileName: "horoscope-icons/aquarius"),
        Horoscope(id: "Pisces", name: "Piscis", dates: "19 febrero - 20 marzo", imageFileName: "horoscope-icons/pisces")]
    
}
